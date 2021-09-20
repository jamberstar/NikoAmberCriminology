# Problem 1 

#nstall the datasets package on the console below using `install.packages("datasets")`. Now load the library.

install.packages("datasets")
#ALREADY INSTALLED SO NOT WORKING
#Load the USArrests dataset and rename it `dat`. Note that this dataset comes with R, in the package datasets, so there's no need to load data from your computer. Why is it useful to rename the dataset?

library(datasets)

dat <- USArrests

#I renamed this is class and deleted the code, but it is important to rename data in order to data set so you can
#differentiate between different data, and additionally, if yiu modify the data it wil not interfere with other
#statisticians data,because this is a shared file.

USArrests
dat$state <- tolower(rownames(USArrests))

#the map function requires everything to be lower case, I have added states in lower case to the USArrest datd

#the variables in this data set are, Murder, Assault, UrbanPop, Rape 
Murder is a nlk

R variable is

 
hist(dat$Murder, main = "Murders in The United States", xlab = "Murders", las=2, ylab = "Frequency"   )

#making a barplot of murders, instead of a histogram

 
barplot(USArrests$Murder , names.arg = state.name,las=2,  ylab = "Murders per 10,000",
        main = "Murder Rate in the United States")

#summary of infomration 
summary(USArrests$Murder)
#find mean
mean(USArrests$Murder)
#find median
median(USArrests$Murder)
#find quartiles 
quantile(USArrests$Murder)

#barplot for rape

barplot(USArrests$Rape , names.arg = state.name,las=2,  ylab = "Instances of Raoe per 10,000",
        main = "Rate of Instances of Rape in the United States")

#bar plot for assaults 

barplot(USArrests$Assault , names.arg = state.name,las=2,  ylab = "Instances of Assault per 10,000",
        main = "Rate of Assaults in the United States")

#comparing all 3 graphs 

par(mfrow=c(3,1)) 
barplot(USArrests$Murder , names.arg = state.name,las=2,  ylab = "Murders per 10,000",
        main = "Murder Rate in the United States")
barplot(USArrests$Rape , names.arg = state.name,las=2,  ylab = "Instances of Raoe per 10,000",
        main = "Rate of Instances of Rape in the United States")
barplot(USArrests$Assault , names.arg = state.name,las=2,  ylab = "Instances of Assault per 10,000",
        main = "Rate of Assaults in the United States")

#intalling new information
install.packages("maps")
install.packages("ggplot2")

#running code for homework
library('maps') 
library('ggplot2') 

ggplot(dat, aes(map_id=state, fill=Murder)) + 
  geom_map(map=map_data("state")) + 
  expand_limits(x=map_data("state")$long, y=map_data("state")$lat)




