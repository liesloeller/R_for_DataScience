# This script was made following R for Data Science Chapter 1 
# Data Visualization using ggplot2
# EOeller Oct 2, 2020

library(tidyverse)

# When referring to a specific function of a package, we use the syntax package::function()
# for example, ggplot2::ggplot() tells us we are using the ggplot function in the ggplot2 package

# First we will use the mpg dataframe to answer the question: do cars with big engines use more fuel than cars with small engines?
mpg
# Here we can see displ, the car's engine size, and hwy, the car's fuel efficiency on the highway.
# We will plot mpg with displ on the x axis and hwy on the y axis.

ggplot(data=mpg) +
  geom_point(mapping= aes(x= displ, y = hwy))

# In the plot we see a negative relationship between engine size and fuel efficiency.
# Cars with larger engines have lower fuel efficiency, meaning
# cars with larger engines use more fuel.

# The first argument of ggplot() is the dataset you use to make the graph. Here it is ggplot(data= mpg).
# The next function geom_point() adds a layer of points to the plot, which creates a scatterplot.
# Each geom function takes a mapping() argument, which is always paired with a aes(x= , y= ).

