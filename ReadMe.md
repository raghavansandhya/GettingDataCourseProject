---
title: "ReadMe: Analysis and Cleansing of Activity Measurement Dataset"
output: html_document
---

## Project Description
One of the most exciting areas in all of data science right now is wearable computing.ompanies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The dataset used for the project is below:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Source Dataset Description
The source dataset contains results of experiments carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

## Analysis of Source Dataset


There are a total of 7352 obs. in Training Dataset and 2947 obs. in Test Dataset.

From the source dataset the following files were used for Analysis, Cleansing and Creation of Tidy dataset for Average of Activity Measurement.

1. **features.txt** - Contains list of all(561) measurment Variables in the Training and Test Dataset Files

2. **features_info.txt** - Contains information about the different kind of measurements taken.

3. **activity_labels.txt** - Conains the activity id and its corresponding activity labels for the different kind of activities performed by the subject.

4. **[test|train]/X_[test|rain].txt** - Contains the Training Dataset measurement information for the 561 different features.

5. **[test|train]/y_[test|train].txt** - Contains the activity_id information for each observation made.

6. **[test|train]/subject_[test|train].txt** - Contains the participating subject_id information for each observation made.


## Creation Tidy dataset for Average of Mean and STD of Activity Measurement

Steps performed:

1. Combined the subject_[test|train].txt, X_[test|rain].txt and y_[test|rain].txt files **column-wise** for each of the test and training datasets. This created a combined_test and combined_training data with 563 columns in each.

2. Merged the combined_test and combined_training data **row-wise** to create the complete dataset. The complete dataset now has 10299 obs and 563 columns

3. Extracted the mean and standard deviation variables of each measurement and created an intermediate dataset by performing a keyword search for the keywords "mean" and "std" in the column names of the complete dataset. Skipped the angle measurement based mean and std variables as they are more of sub measurements. We would now have only 79 distinct variables

4. Joined the intermediate dataset with the activity_labels.txt on activity_id data to get the descriptive activity names for each observation and replaced the activity_id with the same. 

5. The column names for variables in the intermediate file are not very descriptive of the kind of measurment and do not comply very much to the column naming standards of a tidy dataset. So renamed the columns with a more descriptive name as per the information provided in the features_info.txt.

6. Finally, created the tidy dataset by giving the average of each column in the intermediate file which yeilds the dataset for 'Average of Mean and Standard Deviation of Activity Measurement' for each activity and subject. Since there are 30 subjects and 6 different activities this final dataset has (30 X 6) 180 records with 81 columns including the subject_id and activity.

##R Code wriiten for analysis

The R program written for this analysis is run_analysis.R. The below github repository has this R code.

https://github.com/raghavansandhya/GettingDataCourseProject

##Tidy Dataset

The **Average_of_Mean_and_STD_of_Activity_Measurment.txt** contains total of 180 records for 30 subjects (identified by subject_id) across 6 differnet Activities

The below code can be used to read the file

```r
address <- "https://s3.amazonaws.com/coursera-uploads/user-cbeaad4d21ae53c8cdfff2cf/973499/asst-3/bf7a9770d0e811e4a96783b307f25cb6.txt"
address <- sub("^https", "http", address)
data <- read.table(url(address), header = TRUE)
View(data)
```
