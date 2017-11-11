


setwd("C:/pluralsight2")
movies <- read.csv("Movies.csv")

head(movies)

#data viz#

#how many movies in each rating categroy?#

#Histogram#
library(ggplot2)
ggplot(
  data = movies,
  aes(
    x = Rating
  )
) + geom_bar()+
  ggtitle("Count of Movies by Rating")

#Dotplot#
library(ggplot2)
ggplot(
  data = movies,
  aes(
    x = Rating
  )
)+ geom_point(stat = "count") + 
  coord_flip() + 
  ggtitle("Count of movies by Rating")

#piechart#
library(ggplot2)
ggplot(
  data = movies,
  aes(x = "", fill = Rating)
) + geom_bar() +
  coord_polar(theta = "y")
              + ggtitle("Count of movies by rating")
              + ylab("")

#what proportion of movies have won awards?#
library(ggplot2)
ggplot(
  data = movies,
  aes(x = "", fill = Awards)
) + geom_bar() +
  coord_polar(theta = "y")
+ ggtitle("Count of movies by rating")
+ ylab("")
