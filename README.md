# Coursera: Getting and Cleaning Data Course Project  
***

This repository and documents contain the final course project from Week 4 of the Coursera course: Getting and Cleaning Data.  The purpose of the project is to demonstrate an ability to collect, work with, and clean a data set.  

The goal is to prepare tidy data that can be used for later analysis.  The following are required submissions of this project:

1.  A Tidy data set labeled `tidydataset.txt` and an Activity summary labeled `activity_summary.txt` (as described in the Stated Project Goals below).
2.  Link to a Github repository with the `run_analysis.R`.  As well as description of [run_analysis script](#Link1)
3.  Code book labeld `CodeBook.md` that describes the variables, the data, and any transformations or work performed to clean up the data.
4.  And finally a `README.md`.  

### Project Goals

1.  Merges the training and the test sets to create one data set.
2.  Extracts only the measurements on the mean and standard deviation for each measurement.
3.  Uses descriptive activity names to name the activities in the data set
4.  Appropriately labels the data set with descriptive variable names.
5.  From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### The Data Set Overview

One of the most exciting areas in all of data science right now is wearable computing.  Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the Coursera website represent data collected from the accelerometers from the Samsung Galaxy S smartphone.

The **Human Activity Recognition Using Smartphones Data Set** is housed on the UCI Machine Learning Repository.  A full overview can be found by clicking the [link here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  The data set can be downloaded by [clicking here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

### The Data Set Information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### run_analysis.R Script{#Link1}

The `run_analysis.R` script will do the following:

1.  Download the data from the website
2.  Merge feature names to the data
3.  Join subject_id, activity, and features
4.  Merges train and test data sets
5.  Selects variables with only a mean or standard deviation attribute
6.  Creates a tidy data set labeled `tidydataset.txt` and an activity summary outlining the mean for each activity, which is labeled as `activity_summary.txt`