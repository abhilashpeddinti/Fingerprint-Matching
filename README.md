# Fingerprint-Matching

The main objective of the project is to match a fingerprint with the stored fingerprints in the database and obtain the 
similarity measure with respect to the other fingerprints. Fingerprint matching has been one of the most important technique 
for biometric identification. Fingerprint matching is widely used in our daily lives for personal identification. 
The details in the fingerprint are unique to each person which makes it one of the popular technique for biometric 
identification. In this project minutiae features of fingerprint are extracted. The minutiae consists of ridges and valleys 
in a fingerprint which are unique. Initially, if the fingerprint image is a colored image it is converted to grayscale. 
To extract the minutiae features enhancement and masking of the fingerprints is done and then minutiae is extracted. 
The extracted minutiae features are coordination of the minutiae, orientation of minutiae, type of ridge whether it is 
terminated or continuous or bifurcated ridge. In the post processing stage the false minutiae is removed and compared 
to the fingerprint images stored in the database. The similarity measure is calculated by setting a threshold distance 
which is calculated by Euclidian distance metricand threshold theta.
