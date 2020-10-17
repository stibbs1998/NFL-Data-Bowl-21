library(lubridate)
library(plotly)
library(tidyverse)

data.path <- "../data/"

games <- read.csv(paste0(data.path, "games.csv"))
players <- read.csv(paste0(data.path, "players.csv"))
plays <- read.csv(paste0(data.path, "plays.csv"))

# How many diff play types occur
plays %>% 
  group_by(playType) %>% 
  summarise(count = n())
  
# How many diff results occur
plays %>% 
  group_by(passResult) %>% 
  summarise(count = n())
