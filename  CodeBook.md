# Code Book
========================================================

Data Set Information:
--------------------------------------------------------
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 


Attribute Information:

For each record in the dataset it is provided: 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The raw data can be found here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Changes to the data set
--------------------------------------------------------
* Data set has been reduced to only take into account the mean and standard deviations included in the raw data.
* The activity label has been matched with the numbers provided in the raw data and changed into a descriptive name.
* The column names have been changed.
* A tidy data set has been generated that containes the mean of each variable.

******
Activity contains the following values:
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

Subject has integer values between 1 and 30

The other columns contain the mean values from means or standard deviations.


Column description | column Name
------- | -------
activity|The activity peformed.
subject|The ID of the subject.
time.bodyacc.mean.x|Mean time for acceleration of body for X direction.
time.bodyacc.mean.y|Mean time for acceleration of body for Y direction.
time.bodyacc.mean.z|Mean time for acceleration of body for Z direction.
time.bodyacc.std.x|Standard deviation of time for acceleration of body for X direction.
time.bodyacc.std.y|Standard deviation of time for acceleration of body for Y direction.
time.bodyacc.std.z|Standard deviation of time for acceleration of body for Z direction.
time.gravityacc.mean.x|Mean time of acceleration of gravity for X direction.
time.gravityacc.mean.y|Mean time of acceleration of gravity for Y direction.
time.gravityacc.mean.z|Mean time of acceleration of gravity for Z direction.
time.gravityacc.std.x|Standard deviation of time of acceleration of gravity for X direction.
time.gravityacc.std.y|Standard deviation of time of acceleration of gravity for Y direction.
time.gravityacc.std.z|Standard deviation of time of acceleration of gravity for Z direction.
time.bodyaccjerk.mean.x|Mean time of body acceleration jerk for X direction.
time.bodyaccjerk.mean.y|Mean time of body acceleration jerk for Y direction
time.bodyaccjerk.mean.z|Mean time of body acceleration jerk for Z direction
time.bodyaccjerk.std.x|Standard deviation of time of body acceleration jerk for X direction.
time.bodyaccjerk.std.y|Standard deviation of time of body acceleration jerk for Y direction.
time.bodyaccjerk.std.z|Standard deviation of time of body acceleration jerk for Z direction.
time.bodygyro.mean.x|Mean body gyroscope measurement for X direction.
time.bodygyro.mean.y|Mean body gyroscope measurement for Y direction.
time.bodygyro.mean.z|Mean body gyroscope measurement for Z direction.
time.bodygyro.std.x|Standard deviation of body gyroscope measurement for X direction.
time.bodygyro.std.y|Standard deviation of body gyroscope measurement for Y direction.
time.bodygyro.std.z|Standard deviation of body gyroscope measurement for Z direction.
time.bodygyrojerk.mean.x|Mean jerk signal of body for X direction.
time.bodygyrojerk.mean.y|Mean jerk signal of body for Y direction.
time.bodygyrojerk.mean.z|Mean jerk signal of body for Z direction.
time.bodygyrojerk.std.x|Standard deviation of jerk signal of body for X direction.
time.bodygyrojerk.std.y|Standard deviation of jerk signal of body for Y direction.
time.bodygyrojerk.std.z|Standard deviation of jerk signal of body for Z direction.
time.bodyaccmag.mean|Mean magnitude of body Acc
time.bodyaccmag.std|Standard deviation of magnitude of body Acc
time.gravityaccmag.mean|Mean gravity acceleration magnitude.
time.gravityaccmag.std|Standard deviation of gravity acceleration magnitude.
time.bodyaccjerkmag.mean|Mean magnitude of body acceleration jerk.
time.bodyaccjerkmag.std|Standard deviation of magnitude of body acceleration jerk.
time.bodygyromag.mean|Mean magnitude of body gyroscope measurement.
time.bodygyromag.std|Standard deviation of magnitude of body gyroscope measurement.
time.bodygyrojerkmag.mean|Mean magnitude of body body gyroscope jerk measurement.
time.bodygyrojerkmag.std|Standard deviation of magnitude of body body gyroscope jerk measurement.
frequency.bodyacc.mean.x|Mean frequency of body acceleration for X direction.
frequency.bodyacc.mean.y|Mean frequency of body acceleration for Y direction.
frequency.bodyacc.mean.z|Mean frequency of body acceleration for Z direction.
frequency.bodyacc.std.x|Standard deviation of frequency of body acceleration for X direction.
frequency.bodyacc.std.y|Standard deviation of frequency of body acceleration for Y direction.
frequency.bodyacc.std.z|Standard deviation of frequency of body acceleration for Z direction.
frequency.bodyaccjerk.mean.x|Mean frequency of body accerlation jerk for X direction.
frequency.bodyaccjerk.mean.y|Mean frequency of body accerlation jerk for Y direction.
frequency.bodyaccjerk.mean.z|Mean frequency of body accerlation jerk for Z direction.
frequency.bodyaccjerk.std.x|Standard deviation frequency of body accerlation jerk for X direction.
frequency.bodyaccjerk.std.y|Standard deviation frequency of body accerlation jerk for Y direction.
frequency.bodyaccjerk.std.z|Standard deviation frequency of body accerlation jerk for Z direction.
frequency.bodygyro.mean.x|Mean frequency of body gyroscope measurement for X direction.
frequency.bodygyro.mean.y|Mean frequency of body gyroscope measurement for Y direction.
frequency.bodygyro.mean.z|Mean frequency of body gyroscope measurement for Z direction.
frequency.bodygyro.std.x|Standard deviation frequency of body gyroscope measurement for X direction.
frequency.bodygyro.std.y|Standard deviation frequency of body gyroscope measurement for Y direction.
frequency.bodygyro.std.z|Standard deviation frequency of body gyroscope measurement for Z direction.
frequency.bodyaccmag.mean|Mean frequency of body acceleration magnitude.
frequency.bodyaccmag.std|Standard deviation of frequency of body acceleration magnitude.
frequency.bodybodyaccjerkmag.mean|Mean frequency of body acceleration jerk magnitude.
frequency.bodybodyaccjerkmag.std|Standard deviation of frequency of body acceleration jerk magnitude.
frequency.bodybodygyromag.mean|Mean frequency of magnitude of body gyroscope measurement.
frequency.bodybodygyromag.std|Standard deviation of frequency of magnitude of body gyroscope measurement.
frequency.bodybodygyrojerkmag.mean|Mean frequency of magnitude of body gyroscope jerk measurement.
frequency.bodybodygyrojerkmag.std|Standard deviation frequency of magnitude of body gyroscope jerk measurement.