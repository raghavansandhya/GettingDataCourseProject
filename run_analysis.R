## Loading libraries required for this script
library(plyr)
library(dplyr)

## Downloading the file
##if(!file.exists("data")){
##	dir.create("data")
##}
##fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
##download.file(fileURL,destfile="./data/",method="curl")

## Reading the activity labels 
act_lab <- read.table("data/UCI HAR Dataset/activity_labels.txt")
names(act_lab) <- c("activity_id","activity")

## Reading the features_info file which is the format definition of the datasets. Converted them from factor to vector variable
feature_vec <- read.table("data/UCI HAR Dataset/features.txt")
col_names <- as.vector.factor(feature_vec$V2)
valid_col_names <- make.names(names=col_names, unique=TRUE, allow_ = TRUE)

## Reading the training dataset , the corresponding activity marker and the subject identifier files and combining them
train_sub <- read.table("data/UCI HAR Dataset/train/subject_train.txt",as.is = TRUE)
names(train_sub) <- c("subject_id")
train_data <- read.table("data/UCI HAR Dataset/train/X_train.txt",as.is = TRUE)
names(train_data) <- valid_col_names
train_act <- read.table("data/UCI HAR Dataset/train/y_train.txt",as.is = TRUE)
names(train_act) <- c("activity_id")
com_train_data <- cbind(train_sub,train_act,train_data)

## Reading the test dataset , the corresponding activity marker and the subject identifier files and combining them
test_sub <- read.table("data/UCI HAR Dataset/test/subject_test.txt",as.is = TRUE)
names(test_sub) <- c("subject_id")
test_data <- read.table("data/UCI HAR Dataset/test/X_test.txt",as.is = TRUE)
names(test_data) <- valid_col_names
test_act <- read.table("data/UCI HAR Dataset/test/y_test.txt",as.is = TRUE)
names(test_act) <- c("activity_id")
com_test_data <- cbind(test_sub,test_act,test_data)

## Combine the Train and Test Datasets
comb_data <- rbind(com_train_data,com_test_data)

## Select only the key columns and the mean and std variables from the original dataset
select_data <- select(.data = comb_data, subject_id, activity_id,grep("mean",names(comb_data)),grep("std",names(comb_data)))

## Mark the activity labels file and for every activity_id give descriptive activity names to name the activities 
## using act_lab object and rearranging the columns
td1 <- join(select_data,act_lab)
td1 <- select(.data = td1,subject_id,activity,tBodyAcc.mean...X:fBodyBodyGyroJerkMag.std..) ## removing activity id

## Cleaning up of Column Names and giving descriptive names.
chk <- names(td1)
chk <- gsub("BodyAcc","_Body_Accelaration_",chk)
chk <- gsub("BodyGyro","_Body_Angular_Velocity_",chk)	
chk <- gsub("GravityAcc","_Gravity_Accelaration_",chk)
chk[grep("mean",chk)] <- paste("Mean",chk[grep("mean",chk)],sep ='_')
chk[grep("std",chk)] <- paste("STD",chk[grep("std",chk)],sep ='_')
chk <- gsub("_t_","_Time_Domain_",chk)
chk <- gsub("_f_","_Freq_Domain_",chk)
chk <- gsub("_fBody_","_Freq_Domain_",chk)
chk <- gsub("mean|std","",chk)
chk <- gsub("...Z","_Zaxis",chk)
chk <- gsub("...X","_Xaxis",chk)
chk <- gsub("...Y","_Yaxis",chk)
chk <- gsub("\\.","",chk)
chk <- gsub("__","_",chk)
chk <- gsub("Mag","Magnitude",chk)
chk <- gsub("JerkMagnitude","Jerk_Magnitude",chk)
names(td1) <- chk

## Creation of second, independent tidy data set with the average of each variable for each activity and each subject.
summ_data <- ddply(td1,.(subject_id,activity),numcolwise(mean,na.rm = TRUE))

## Creating a csv file with the same 
write.table(summ_data,"data/Average_of_Mean_and_STD_of_Activity_Measurment.txt",row.names = FALSE)
