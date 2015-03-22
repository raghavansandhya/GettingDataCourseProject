---
title: "Codebook for 'Average of Mean and Standard Deviation of Activity Measurement' Dataset"
output: html_document
---


**Date Created:** 2015-03-22

Codebook prepared by Sandhya Raghavan based on a tidy dataset created for Average of Activity measurment. The dataset was prepared by cleansing the data collected from the accelerometers from the Samsung Galaxy S smartphone.

Below is the link to the ReadMe file of the cleansing procedure followed.
## ADD LINK HERE

The **Average_of_Mean_and_STD_of_Activity_Measurment.txt** contains total of 180 records for 30 subjects (identified by subject_id) across 6 differnet Activities.The activities are as follows:


WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

Below is the definition for the other variables in the dataset:


|Variable_Name                                             |Variable_Type |Unit_of_Measurment | Column_Position|
|:---------------------------------------------------------|:-------------|:------------------|---------------:|
|subject_id                                                |numeric       |N/A                |               1|
|activity                                                  |integer       |N/A                |               2|
|Mean_Time_Domain_Body_Accelaration_Xaxis                  |numeric       |HZ                 |               3|
|Mean_Time_Domain_Body_Accelaration_Yaxis                  |numeric       |HZ                 |               4|
|Mean_Time_Domain_Body_Accelaration_Zaxis                  |numeric       |HZ                 |               5|
|Mean_Time_Domain_Gravity_Accelaration_Xaxis               |numeric       |HZ                 |               6|
|Mean_Time_Domain_Gravity_Accelaration_Yaxis               |numeric       |HZ                 |               7|
|Mean_Time_Domain_Gravity_Accelaration_Zaxis               |numeric       |HZ                 |               8|
|Mean_Time_Domain_Body_Accelaration_Jerk_Xaxis             |numeric       |HZ                 |               9|
|Mean_Time_Domain_Body_Accelaration_Jerk_Yaxis             |numeric       |HZ                 |              10|
|Mean_Time_Domain_Body_Accelaration_Jerk_Zaxis             |numeric       |HZ                 |              11|
|Mean_Time_Domain_Body_Angular_Velocity_Xaxis              |numeric       |HZ                 |              12|
|Mean_Time_Domain_Body_Angular_Velocity_Yaxis              |numeric       |HZ                 |              13|
|Mean_Time_Domain_Body_Angular_Velocity_Zaxis              |numeric       |HZ                 |              14|
|Mean_Time_Domain_Body_Angular_Velocity_Jerk_Xaxis         |numeric       |HZ                 |              15|
|Mean_Time_Domain_Body_Angular_Velocity_Jerk_Yaxis         |numeric       |HZ                 |              16|
|Mean_Time_Domain_Body_Angular_Velocity_Jerk_Zaxis         |numeric       |HZ                 |              17|
|Mean_Time_Domain_Body_Accelaration_Magnitude              |numeric       |HZ                 |              18|
|Mean_Time_Domain_Gravity_Accelaration_Magnitude           |numeric       |HZ                 |              19|
|Mean_Time_Domain_Body_Accelaration_Jerk_Magnitude         |numeric       |HZ                 |              20|
|Mean_Time_Domain_Body_Angular_Velocity_Magnitude          |numeric       |HZ                 |              21|
|Mean_Time_Domain_Body_Angular_Velocity_Jerk_Magnitude     |numeric       |HZ                 |              22|
|Mean_Freq_Domain_Body_Accelaration_Xaxis                  |numeric       |HZ                 |              23|
|Mean_Freq_Domain_Body_Accelaration_Yaxis                  |numeric       |HZ                 |              24|
|Mean_Freq_Domain_Body_Accelaration_Zaxis                  |numeric       |HZ                 |              25|
|Mean_Freq_Domain_Body_Accelaration_Freq_Xaxis             |factor        |HZ                 |              26|
|Mean_Freq_Domain_Body_Accelaration_Freq_Yaxis             |numeric       |HZ                 |              27|
|Mean_Freq_Domain_Body_Accelaration_Freq_Zaxis             |numeric       |HZ                 |              28|
|Mean_Freq_Domain_Body_Accelaration_Jerk_Xaxis             |numeric       |HZ                 |              29|
|Mean_Freq_Domain_Body_Accelaration_Jerk_Yaxis             |numeric       |HZ                 |              30|
|Mean_Freq_Domain_Body_Accelaration_Jerk_Zaxis             |numeric       |HZ                 |              31|
|Mean_Freq_Domain_Body_Accelaration_JerkFreq_Xaxis         |numeric       |HZ                 |              32|
|Mean_Freq_Domain_Body_Accelaration_JerkFreq_Yaxis         |numeric       |HZ                 |              33|
|Mean_Freq_Domain_Body_Accelaration_JerkFreq_Zaxis         |numeric       |HZ                 |              34|
|Mean_Freq_Domain_Body_Angular_Velocity_Xaxis              |numeric       |HZ                 |              35|
|Mean_Freq_Domain_Body_Angular_Velocity_Yaxis              |numeric       |HZ                 |              36|
|Mean_Freq_Domain_Body_Angular_Velocity_Zaxis              |numeric       |HZ                 |              37|
|Mean_Freq_Domain_Body_Angular_Velocity_Freq_Xaxis         |numeric       |HZ                 |              38|
|Mean_Freq_Domain_Body_Angular_Velocity_Freq_Yaxis         |numeric       |HZ                 |              39|
|Mean_Freq_Domain_Body_Angular_Velocity_Freq_Zaxis         |numeric       |HZ                 |              40|
|Mean_Freq_Domain_Body_Accelaration_Magnitude              |numeric       |HZ                 |              41|
|Mean_Freq_Domain_Body_Accelaration_MagnitudeFreq          |numeric       |HZ                 |              42|
|Mean_Freq_Domain_Body_Accelaration_Jerk_Magnitude         |numeric       |HZ                 |              43|
|Mean_Freq_Domain_Body_Accelaration_Jerk_MagnitudeFreq     |numeric       |HZ                 |              44|
|Mean_Freq_Domain_Body_Angular_Velocity_Magnitude          |numeric       |HZ                 |              45|
|Mean_Freq_Domain_Body_Angular_Velocity_MagnitudeFreq      |numeric       |HZ                 |              46|
|Mean_Freq_Domain_Body_Angular_Velocity_Jerk_Magnitude     |numeric       |HZ                 |              47|
|Mean_Freq_Domain_Body_Angular_Velocity_Jerk_MagnitudeFreq |numeric       |HZ                 |              48|
|STD_Time_Domain_Body_Accelaration_Xaxis                   |numeric       |HZ                 |              49|
|STD_Time_Domain_Body_Accelaration_Yaxis                   |numeric       |HZ                 |              50|
|STD_Time_Domain_Body_Accelaration_Zaxis                   |numeric       |HZ                 |              51|
|STD_Time_Domain_Gravity_Accelaration_Xaxis                |numeric       |HZ                 |              52|
|STD_Time_Domain_Gravity_Accelaration_Yaxis                |numeric       |HZ                 |              53|
|STD_Time_Domain_Gravity_Accelaration_Zaxis                |numeric       |HZ                 |              54|
|STD_Time_Domain_Body_Accelaration_Jerk_Xaxis              |numeric       |HZ                 |              55|
|STD_Time_Domain_Body_Accelaration_Jerk_Yaxis              |numeric       |HZ                 |              56|
|STD_Time_Domain_Body_Accelaration_Jerk_Zaxis              |numeric       |HZ                 |              57|
|STD_Time_Domain_Body_Angular_Velocity_Xaxis               |numeric       |HZ                 |              58|
|STD_Time_Domain_Body_Angular_Velocity_Yaxis               |numeric       |HZ                 |              59|
|STD_Time_Domain_Body_Angular_Velocity_Zaxis               |numeric       |HZ                 |              60|
|STD_Time_Domain_Body_Angular_Velocity_Jerk_Xaxis          |numeric       |HZ                 |              61|
|STD_Time_Domain_Body_Angular_Velocity_Jerk_Yaxis          |numeric       |HZ                 |              62|
|STD_Time_Domain_Body_Angular_Velocity_Jerk_Zaxis          |numeric       |HZ                 |              63|
|STD_Time_Domain_Body_Accelaration_Magnitude               |numeric       |HZ                 |              64|
|STD_Time_Domain_Gravity_Accelaration_Magnitude            |numeric       |HZ                 |              65|
|STD_Time_Domain_Body_Accelaration_Jerk_Magnitude          |numeric       |HZ                 |              66|
|STD_Time_Domain_Body_Angular_Velocity_Magnitude           |numeric       |HZ                 |              67|
|STD_Time_Domain_Body_Angular_Velocity_Jerk_Magnitude      |numeric       |HZ                 |              68|
|STD_Freq_Domain_Body_Accelaration_Xaxis                   |numeric       |HZ                 |              69|
|STD_Freq_Domain_Body_Accelaration_Yaxis                   |numeric       |HZ                 |              70|
|STD_Freq_Domain_Body_Accelaration_Zaxis                   |numeric       |HZ                 |              71|
|STD_Freq_Domain_Body_Accelaration_Jerk_Xaxis              |numeric       |HZ                 |              72|
|STD_Freq_Domain_Body_Accelaration_Jerk_Yaxis              |numeric       |HZ                 |              73|
|STD_Freq_Domain_Body_Accelaration_Jerk_Zaxis              |numeric       |HZ                 |              74|
|STD_Freq_Domain_Body_Angular_Velocity_Xaxis               |numeric       |HZ                 |              75|
|STD_Freq_Domain_Body_Angular_Velocity_Yaxis               |numeric       |HZ                 |              76|
|STD_Freq_Domain_Body_Angular_Velocity_Zaxis               |numeric       |HZ                 |              77|
|STD_Freq_Domain_Body_Accelaration_Magnitude               |numeric       |HZ                 |              78|
|STD_Freq_Domain_Body_Accelaration_Jerk_Magnitude          |numeric       |HZ                 |              79|
|STD_Freq_Domain_Body_Angular_Velocity_Magnitude           |numeric       |HZ                 |              80|
|STD_Freq_Domain_Body_Angular_Velocity_Jerk_Magnitude      |numeric       |HZ                 |              81|

## Appendix

R Snippet used to create code book is below

```r
## Stored onemore tidy data set as csv just for convenience
data <- read.csv("data/Average_of_Activity_Measurment.csv")
code_book <- data.frame(Variable_Name=c(names(data)))
st <- sapply(data,class)
code_book$Variable_Type <- st[code_book$Variable_Name]
##code_book$Variable_Description <-  code_book$Variable_Name
code_book$Column_Position <- seq(along=code_book$Variable_Name)
library(knitr)
kable(code_book)
```
