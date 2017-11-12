
# are there outliers?#
#how spread out are the values?#
#what is the shape of the distribution?#

setwd("C:/pluralsight2")
movies <- read.csv("Movies.csv")
head(movies)


#What is the average movie run time?#
library(ggplot2)

ggplot(
  data =movies,
  aes( x =Runtime, stat ="count")
)+ geom_dotplot(binwidth = 1)
                + ggtitle("Distribution of movie runtimes")
                +xlab("Runtime")
                
#histogram#
library(ggplot2)
ggplot(
  data= movies,
  aes(x= Runtime)) + geom_histogram(binwidth = 10)
+ ggtitle("Distribution of movie runtimes")
+ xlab("Runtime(min)")

