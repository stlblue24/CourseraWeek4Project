# 1. Load Libraries
library(zip)
library(dplyr)

# 2. Set Up Directory and Download Files
if(!file.exists("Coursera Week 4 Project")) {
  dir.create("Coursera Week 4 Project")
}

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./Coursera Week 4 Project/tmp.zip", method = "curl")
list.files("./Coursera Week 4 Project")
dateDownloaded <- date()

## A. Unzip Files and Store Files in Directory
# Use library(unzip) to extract files and store into directory Coursera Week 4 Project
unzip("./Coursera Week 4 Project/tmp.zip", exdir = "./Coursera Week 4 Project", overwrite = TRUE)
# Check file names in each folder UCI HAR Dataset, UCI HAR Dataset/train, and UCI HAR Dataset/test
list.files("./Coursera Week 4 Project/UCI HAR Dataset")
list.files("./Coursera Week 4 Project/UCI HAR Dataset/train")
list.files("./Coursera Week 4 Project/UCI HAR Dataset/test")

# 3. Read in Data using read.table()
## A. activity_labels.txt
activity_labels <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/activity_labels.txt")
activity_labels <- rename(activity_labels, activity_id = V1, activity_name = V2)
head(activity_labels)

## B. features.txt
# Read in features.txt
features <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/features.txt")
# Rename columns to feature_id and feature_name
features <- rename(features, feature_id = V1, feature_name = V2)

# Store feature_name as character vector to rename column names in x_train data frame.
feature_names <- as.character(features$feature_name)

## C. Training Data Sets
### a. subject_train.txt
subject_train <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/train/subject_train.txt")
# Rename column to subject_id
subject_train <- rename(subject_train, subject_id = V1)

### b. X_train.txt
# Read in x_train.txt file
X_train <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/train/X_train.txt")
# Rename column names to the labels stored in feature_names
names(X_train)[names(X_train) == colnames(X_train)] <- feature_names
# Rename X_train data frame to feature_train
feature_train <- X_train

### c. y_train.txt
# Read in y_train.txt
y_train <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/train/y_train.txt")
# Rename column to activity_id
y_train <- rename(y_train, activity_id = V1)
# Rename y_train data frame to activity_train
activity_train <- y_train

### d. Reading in Train Intertial Signals
body_acc_x_train <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt")
body_acc_y_train <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/train/Inertial Signals/body_acc_y_train.txt")
body_acc_z_train <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/train/Inertial Signals/body_acc_z_train.txt")
body_gyro_x_train <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt")
body_gyro_y_train <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/train/Inertial Signals/body_gyro_y_train.txt")
body_gyro_z_train <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/train/Inertial Signals/body_gyro_z_train.txt")
total_acc_x_train <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt")
total_acc_y_train <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/train/Inertial Signals/total_acc_y_train.txt")
total_acc_z_train <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/train/Inertial Signals/total_acc_z_train.txt")

## D. Test Data Sets
### a. subject_test.txt
# Read in subject_test.txt
subject_test <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/test/subject_test.txt")
# Rename column name to subject_id
subject_test <- rename(subject_test, subject_id = V1)

### b. x_test.txt
# Read in x_test.txt file
X_test <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/test/X_test.txt")
# Rename column names to the labels stored in feature_names
names(X_test)[names(X_test) == colnames(X_test)] <- feature_names
# Rename X_test data frame to feature_test
feature_test <- X_test

### c. y_test.txt
# Read in y_train.txt
y_test <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/test/y_test.txt")
# Rename column to activity_id
y_test <- rename(y_test, activity_id = V1)
# Rename y_test data frame to activity_test
activity_test <- y_test

### d. Reading in Test Intertial Signals
body_acc_x_test <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/test/Inertial Signals/body_acc_x_test.txt")
body_acc_y_test <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/test/Inertial Signals/body_acc_y_test.txt")
body_acc_z_test <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/test/Inertial Signals/body_acc_z_test.txt")
body_gyro_x_test <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/test/Inertial Signals/body_gyro_x_test.txt")
body_gyro_y_test <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/test/Inertial Signals/body_gyro_y_test.txt")
body_gyro_z_test <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/test/Inertial Signals/body_gyro_z_test.txt")
total_acc_x_test <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/test/Inertial Signals/total_acc_x_test.txt")
total_acc_y_test <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/test/Inertial Signals/total_acc_y_test.txt")
total_acc_z_test <- read.table("./Coursera Week 4 Project/UCI HAR Dataset/test/Inertial Signals/total_acc_z_test.txt")

# 4. Create Tidy Data Set as Outlined for Each Project Objective
## Objective 1: Merge Train and Test Data Sets
### A. In training data, using cbind() to join columns subject_train, activity_train, and feature_train
train_data <- cbind(subject_train, activity_train, feature_train)

### B. In test data, using cbind() to join columns subject_test, activity_train$test, and feature_test 
test_data <- cbind(subject_test, activity_test, feature_test)

### C. Now using rbind() to join train and test data
full_data <- rbind(train_data, test_data)

## Objective 2: Extract only the measurements on the mean and standard deviation for each measurement
# Using grep() to find variables with mean and std and storing into vector sub_vars
sub_vars <- grep("mean\\(|std\\(", names(full_data), value = TRUE)
# Isolating columns with the sub_vars and creating sub_data data frame
sub_data <- full_data[,c("subject_id", "activity_id", sub_vars)]

## Objective 3: Use descriptive activity names to name the activities in the data set
# Store the names of the activities from activity_labels data frame
activity_names <- activity_labels$activity_name
# Add label names to the activity_id column in sub_vars data frame and change activity_id column name to activity
sub_data$activity_id <- factor(sub_data$activity_id, levels = 1:6,
                               labels = activity_names)
sub_data <- rename(sub_data, activity = activity_id)

## Objective 4: Appropriately label the data set with descriptive variable names
# t denotes time, replacing prefix t in variable name with time
names(sub_data) <- gsub("^t", "time", names(sub_data))
# Acc denotes Accelerometer, replacing all instances of Acc with Acceleromter in variable name
names(sub_data) <- gsub("Acc", "Accelerometer", names(sub_data))
# Gyro denotes Gyroscope, replacing all instances of Gyro with Gyroscope in variable name
names(sub_data) <- gsub("Gyro", "Gyroscope", names(sub_data))
# Mag denotes Magnitude, replacing all instances of Mag with Magnitude in variable name
names(sub_data) <- gsub("Mag", "Magnitude", names(sub_data))
# f denotes frequency, replacing prefix f in variable name with frequency
names(sub_data) <- gsub("^f", "frequency", names(sub_data))
# Remove additional "Body" in variables that include "BodyBody"
names(sub_data) <- gsub("BodyBody", "Body", names(sub_data))

## Objective 5: From step 4, create second tidy data set with the average of each variable for each activity
# Create new data frame summary with activity_summary
activity_summary <- sub_data %>%
  # Group by subject and activity using dplyr
  group_by(subject_id, activity) %>%
  # Summarize_all using the mean function
  summarize_all(mean)
# Write tidy data and activity summary to a .txt file
write.table(sub_data, "tidydataset.txt", row.names = FALSE)
write.table(activity_summary, "activity_summary.txt", row.names = FALSE)