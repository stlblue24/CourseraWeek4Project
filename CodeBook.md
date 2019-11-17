# CodeBook for Coursera: Getting and Cleaning Data Course Project

***
The following contains variable and data set information from the **Human Activity Recognition Using Smartphones** data set.

### Full Data Set Information

Abstract from UCI Machine Learning Repository: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.
	
| Overview                        | Details                           |
| :------------------------------ |:--------------------------------- |
| **Data Set Characteristics**    | Multivariate, Time-Series         |
| **Attribute Characteristis**    | N/A                               |
| **Associated Tasks**            | Classification, Clustering        |
| **Number of Instances**         | 10,299                            |
| **Number of Attributes**        | 561                               |
| **Missing Values?**             | N/A                               |
| **Area**                        | Computer                          |
| **Date Donated**                | 2012-12-10                        |


### Course Project Tidy Data Set Information and Variables

| Overview                        | Details                           |
| :------------------------------ |:--------------------------------- |
| **Date Used for Course Project**| 2019-15-11                        |
| **R Version**                   | R version 3.5.3 (2019-03-11)      |
| **R Platform**                  | x86_64-apple-darwin15.6.0         |
| `tidydataset.txt`               | Tidy data set containing the output from the `run_analysis.R` script.  File has 10,299 observations and 68 variables          |
| `activity_summary.txt`          | Summarized output containing the mean for each of the six activities performed by each of the 30 subjects         |


**Variable Descriptions**

Each row contains the measurements for each of the individual activities performed by each subject.  

| Variable                | Description                       |
| :---------------------- |:--------------------------------- |
| `subject_id`            | The id related to each of the 30 individuals that participated in the testing |
| `activity`              | The specific activity performed by each of the subjects.  There were a total of six activities from where measurments were recorded: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING  |
| `timeBodyAccelerometer-mean()-X` | A time domain Body measurement from the X-axis of the Accelerometer.  The variable is the mean measurement of the time domain  |
| `timeBodyAccelerometer-mean()-Y` | A time domain Body measurement from the Y-axis of the Accelerometer.  The variable is the mean measurement of the time domain  |
| `timeBodyAccelerometer-mean()-Z` | A time domain Body measurement from the Z-axis of the Accelerometer.  The variable is the mean measurement of the time domain  |
| `timeBodyAccelerometer-std()-X` | A time domain Body measurement from the X-axis of the Accelerometer.  The variable is the standard deviation measurement of the time domain  |
| `timeBodyAccelerometer-std()-Y` | A time domain Body measurement from the Y-axis of the Accelerometer.  The variable is the standard deviation measurement of the time domain  |
| `timeBodyAccelerometer-std()-Z` | A time domain Body measurement from the Z-axis of the Accelerometer.  The variable is the standard deviation measurement of the time domain  |
| `timeGravityAccelerometer-mean()-X` | A time domain Gravity measurement from the X-axis of the Accelerometer.  The variable is the mean measurement of the time domain  |
| `timeGravityAccelerometer-mean()-Y` | A time domain Gravity measurement from the Y-axis of the Accelerometer.  The variable is the mean measurement of the time domain  |
| `timeGravityAccelerometer-mean()-Z` | A time domain Gravity measurement from the Z-axis of the Accelerometer.  The variable is the mean measurement of the time domain  |
| `timeGravityAccelerometer-std()-X` | A time domain Gravity measurement from the X-axis of the Accelerometer.  The variable is the standard deviation measurement of the time domain  |
| `timeGravityAccelerometer-std()-Y` | A time domain Gravity measurement from the Y-axis of the Accelerometer.  The variable is the standard deviation measurement of the time domain  |
| `timeGravityAccelerometer-std()-Z` | A time domain Gravity measurement from the Z-axis of the Accelerometer.  The variable is the standard deviation measurement of the time domain  |
| `timeBodyAccelerometerJerk-mean()-X` | A time domain Body linear acceleration and angular velocity derived in time to obtain Jerk signal measurements from the X-axis of the Accelerometer.  The variable is the mean measurement of the time domain  |
| `timeBodyAccelerometerJerk-mean()-Y` | A time domain Body linear acceleration and angular velocity derived in time to obtain Jerk signal measurements from the Y-axis of the Accelerometer.  The variable is the mean measurement of the time domain  |
| `timeBodyAccelerometerJerk-mean()-Z` | A time domain Body linear acceleration and angular velocity derived in time to obtain Jerk signal measurements from the Z-axis of the Accelerometer.  The variable is the mean measurement of the time domain  |
| `timeBodyAccelerometerJerk-std()-X` | A time domain Body linear acceleration and angular velocity derived in time to obtain Jerk signal measurements from the X-axis of the Accelerometer.  The variable is the standard deviation measurement of the time domain  |
| `timeBodyAccelerometerJerk-std()-Y` | A time domain Body linear acceleration and angular velocity derived in time to obtain Jerk signal measurements from the Y-axis of the Accelerometer.  The variable is the standard deviation measurement of the time domain  |
| `timeBodyAccelerometerJerk-std()-Z` | A time domain Body linear acceleration and angular velocity derived in time to obtain Jerk signal measurements from the Z-axis of the Accelerometer.  The variable is the standard deviation measurement of the time domain  |
| `timeBodyGyroscope-mean()-X` | A time domain Body measurement from the X-axis of the Gyroscope.  The variable is the mean measurement of the time domain  |
| `timeBodyGyroscope-mean()-Y` | A time domain Body measurement from the Y-axis of the Gyroscope.  The variable is the mean measurement of the time domain  |
| `timeBodyGyroscope-mean()-Z` | A time domain Body measurement from the Z-axis of the Gyroscope.  The variable is the mean measurement of the time domain  |
| `timeBodyGyroscope-std()-X` | A time domain Body measurement from the X-axis of the Gyroscope.  The variable is the standard deviation measurement of the time domain  |
| `timeBodyGyroscope-std()-Y` | A time domain Body measurement from the Y-axis of the Gyroscope.  The variable is the standard deviation measurement of the time domain  |
| `timeBodyGyroscope-std()-Z` | A time domain Body measurement from the Z-axis of the Gyroscope.  The variable is the standard deviation measurement of the time domain  |
| `timeBodyGyroscopeJerk-mean()-X` | A time domain Body linear acceleration and angular velocity derived in time to obtain Jerk signal measurements from the X-axis of the Gyroscope.  The variable is the mean measurement of the time domain  |
| `timeBodyGyroscopeJerk-mean()-Y` | A time domain Body linear acceleration and angular velocity derived in time to obtain Jerk signal measurements from the Y-axis of the Gyroscope.  The variable is the mean measurement of the time domain  |
| `timeBodyGyroscopeJerk-mean()-Z` | A time domain Body linear acceleration and angular velocity derived in time to obtain Jerk signal measurements from the Z-axis of the Gyroscope.  The variable is the mean measurement of the time domain  |
| `timeBodyGyroscopeJerk-std()-X` | A time domain Body linear acceleration and angular velocity derived in time to obtain Jerk signal measurements from the X-axis of the Gyroscope.  The variable is the standard deviation measurement of the time domain  |
| `timeBodyGyroscopeJerk-std()-Y` | A time domain Body linear acceleration and angular velocity derived in time to obtain Jerk signal measurements from the Y-axis of the Gyroscope.  The variable is the standard deviation measurement of the time domain  |
| `timeBodyGyroscopeJerk-std()-Z` | A time domain Body linear acceleration and angular velocity derived in time to obtain Jerk signal measurements from the Z-axis of the Gyroscope.  The variable is the standard deviation measurement of the time domain  |
| `timeBodyAccelerometerMagnitude-mean()` | A time domain Body linear acceleration and angular velocity derived in time to obtain for which the magnitude is taken from the three-dimensional signals and the mean is calculated from using the Euclidean norm |
| `timeBodyAccelerometerMagnitude-std()` | A time domain Body linear acceleration and angular velocity derived in time to obtain for which the magnitude is taken from the three-dimensional signals and the standard deviation is calculated from using the Euclidean norm |
| `timeGravityAccelerometerMagnitude-mean()`  | A time domain Gravity linear acceleration and angular velocity derived in time for which the magnitude is taken from the three-dimensional signals and the mean is calculated from using the Euclidean norm |
| `timeGravityAccelerometerMagnitude-std()` | A time domain Gravity linear acceleration and angular velocity derived in time for which the magnitude is taken from the three-dimensional signals and the standard deviation is calculated from using the Euclidean norm |
| `timeBodyAccelerometerJerkMagnitude-mean()` | A time domain Body linear acceleration and angular velocity derived in time to obtain Jerk and Magnitude signals from the three-dimensional signals and the mean is calculated from using the Euclidean norm |
| `timeBodyAccelerometerJerkMagnitude-std()` | A time domain Body linear acceleration and angular velocity derived in time to obtain Jerk and Magnitude signals, for which the magnitude is taken from the three-dimensional signals and the standard deviation is calculated from using the Euclidean norm |
| `timeBodyGyroscopeMagnitude-mean()` | A time domain Body linear acceleration and angular velocity derived in time from Gryoscope to obtain Magnitude signals from the three-dimensional signals.  The mean is then calculated from using the Euclidean norm |
| `timeBodyGyroscopeMagnitude-std()` | A time domain Body linear acceleration and angular velocity derived in time from Gryoscope to obtain Magnitude signals from the three-dimensional signals.  The standard deviation is then calculated from using the Euclidean norm |
| `timeBodyGyroscopeJerkMagnitude-mean()` | A time domain Body linear acceleration and angular velocity derived in time from Gryoscope to obtain Jerk and Magnitude signals from the three-dimensional signals and the mean is calculated from using the Euclidean norm |
| `timeBodyGyroscopeJerkMagnitude-std()` | A time domain Body linear acceleration and angular velocity derived in time from Gryoscope to obtain Jerk and Magnitude signals, for which the magnitude is taken from the three-dimensional signals and the standard deviation is calculated from using the Euclidean norm |
| `frequencyBodyAccelerometer-mean()-X` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the Body measurment from the Acceleromter of the X-axis.  The is the mean of frequency |
| `frequencyBodyAccelerometer-mean()-Y` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the Body measurment from the Acceleromter of the Y-axis.  The is the mean of frequency |
| `frequencyBodyAccelerometer-mean()-Z` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the Body measurment from the Acceleromter of the Z-axis.  The is the mean of frequency |
| `frequencyBodyAccelerometer-std()-X` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the Body measurment from the Acceleromter of the X-axis.  The is the standard deviation of frequency |
| `frequencyBodyAccelerometer-std()-Y` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the Body measurment from the Acceleromter of the Y-axis.  The is the standard deviation of frequency |
| `frequencyBodyAccelerometer-std()-Z` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the Body measurment from the Acceleromter of the Z-axis.  The is the standard deviation of frequency |
| `frequencyBodyAccelerometerJerk-mean()-X` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the Body measurment that obtained Jerk signals from the Acceleromter of the X-axis.  The is the mean of frequency |
| `frequencyBodyAccelerometerJerk-mean()-Y` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the Body measurment that obtained Jerk signals from the Acceleromter of the Y-axis.  The is the mean of frequency |
| `frequencyBodyAccelerometerJerk-mean()-Z` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the Body measurment that obtained Jerk signals from the Acceleromter of the Z-axis.  The is the mean of frequency |
| `frequencyBodyAccelerometerJerk-std()-X` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the Body measurment that obtained Jerk signals from the Acceleromter of the X-axis.  The is the standard deviation of frequency |
| `frequencyBodyAccelerometerJerk-std()-Y` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the Body measurment that obtained Jerk signals from the Acceleromter of the Y-axis.  The is the standard deviation of frequency |
| `frequencyBodyAccelerometerJerk-std()-Z` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the Body measurment that obtained Jerk signals from the Acceleromter of the Z-axis.  The is the standard deviation of frequency |
| `frequencyBodyGyroscope-mean()-X` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the Body measurment from the Gyroscope of the X-axis.  The is the mean of frequency |
| `frequencyBodyGyroscope-mean()-Y` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the Body measurment from the Gyroscope of the Y-axis.  The is the mean of frequency |
| `frequencyBodyGyroscope-mean()-Z` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the Body measurment from the Gyroscope of the Z-axis.  The is the mean of frequency |
| `frequencyBodyGyroscope-std()-X` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the Body measurment from the Gyroscope of the X-axis.  The is the standard deviation of frequency |
| `frequencyBodyGyroscope-std()-Y` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the Body measurment from the Gyroscope of the Y-axis.  The is the standard deviation of frequency |
| `frequencyBodyGyroscope-std()-Z` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the Body measurment from the Gyroscope of the Z-axis.  The is the standard deviation of frequency |
| `frequencyBodyAccelerometerMagnitude-mean()` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the obtained Magnitude signals of the Body from the Accelerometer.  This is the mean of the frequency |
| `frequencyBodyAccelerometerMagnitude-std()` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the obtained Magnitude signals of the Body from the Accelerometer.  This is the standard deviation of the frequency  |     
| `frequencyBodyAccelerometerJerkMagnitude-mean()` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the obtained Jerk and Magnitude signals of the Body from the Accelerometer.  This is the mean of the frequency |
| `frequencyBodyAccelerometerJerkMagnitude-std()` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the obtained Jerk and Magnitude signals of the Body from the Accelerometer.  This is the standard deviation of the frequency  |  
| `frequencyBodyGyroscopeMagnitude-mean()` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the obtained Magnitude signals of the Body from the Gyroscope.  This is the mean of the frequency |
| `frequencyBodyGyroscopeMagnitude-std()` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the obtained Magnitude signals of the Body from the Gyroscope.  This is the standard deviation of the frequency  |     
| `frequencyBodyGyroscopeJerkMagnitude-mean()` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the obtained Jerk and Magnitude signals of the Body from the Gyroscope.  This is the mean of the frequency |
| `frequencyBodyGyroscopeJerkMagnitude-std()` | A frequency domain signal where a Fast Fourier Transform (FFT) was applied to the obtained Jerk and Magnitude signals of the Body from the Gyroscope.  This is the standard deviation of the frequency  |  
