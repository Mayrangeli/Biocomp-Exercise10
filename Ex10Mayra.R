#Exercise 10
#Set working directory 
setwd("/Users/mayra/OneDrive/Documents/BioComputing/Biocomp-Exercise10")

#ggplot package 
library(ggplot2)

##load data
data <-read.table(header = TRUE, file = "data.txt", sep = ",")
thawdepth <-read.csv(file ="thw.csv")

d <- ggplot(thawdepth, aes(Thaw depth Severe, Thaw depth Moderate))

# Scatterplot
m + geom_point() + 
  geom_smooth(method="lm", se=F) +
  labs(y="Severe", 
       x="Moderate", 
       title="Scatterplot with overlapping points", 
       caption="Artic Thaw Depth")

##Exercise2
# Given the data in "data.txt".Write a script that generates two 
##figures that sumamrize the data. First, show a barplot of the means of the four populations. 
## Second, show a scatter plot of all of the observations.
## Do the bar and scatter plots tell you different stories? Why?

data <- read.table(file = "data.txt", sep = ",", header = TRUE)

#Creating a barplot 
ggplot(data, aes(x = region, y = observations)) + 
  stat_summary(fun = mean, geom = "bar")

#Creating scarter plot
ggplot(data, aes(x = region, y = observations)) +
  geom_jitter()

#This barplot gives us a very vast and almost vage visualiztion of the data that we are 
#working with. We can't infer anything from the barplots.
#In other hand the scaterplot gives us a more coherent vusializtion of the data that
#we are working with.