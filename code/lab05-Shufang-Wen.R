# ===================================================================
# Title: Descriptive Analysis
# Description:
#   This script computes descriptive statistics, as well as 
#   various exploratory data visualizations.
# Input(s): data file 'nba2018-players.csv'
# Output(s): summary data files, and plots
# Author: Shufang Wen
# Date: 10-03-2019
# ===================================================================

# packages
library(dplyr)
library(ggplot2)

dat <- read.csv("./data/nba2018-players.csv", sep = ",", header = TRUE)

warriors <- dat %>% filter(team == "GSW") %>% arrange(salary)

write.csv(dat %>% filter(team == "GSW") %>% arrange(salary), file = "warriors.csv", row.names = FALSE)

list.dirs(path = ".")

