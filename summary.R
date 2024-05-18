#load the packages
library(tidyverse)
library(dplyr)

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

#what was the lastest show added on the data
lastest_show_added <- netflix_data %>%
  filter(date_added == max(date_added)) %>%
  pull(title)
print(lastest_show_added)

#what was the oldest show on the data 
oldest_show <- netflix_data %>%
  filter(release_year == max(release_year)) %>%
  pull(title)
print(oldest_show)