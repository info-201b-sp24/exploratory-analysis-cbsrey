#load the packages
library(tidyverse)
library(dplyr)

current_dir <- getwd()
print(current_dir)
#load the data set 
netflix_data <- read_csv("netflix_titles.csv")

#get the data that we want 

#number of total tv series and movies 
nshows <- netflix_data %>% 
  nrow()
print(nshows)

#number of each features 
nfeatures <- netflix_data %>% 
  ncol()
print(nshows)