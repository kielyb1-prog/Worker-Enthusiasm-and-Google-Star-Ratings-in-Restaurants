## Project: STA 145, Fall 2026, Final Project Individual
# Located:    Google Sheets
# File Name:  Kiely.R
# Date:       2026_9_16
# Who:        Brody Kiely


## Load packages
# NOTE: Run base.R if these commands return an error!
library(readr)
library(dplyr)
library(ggplot2)
library(haven)
library(forcats)
library(psych)

# Load data
data <- read_delim("raw_data.csv")


###############################################################################
################ Table 1: descriptive statistics ###########
###############################################################################

# Quantitative variable: Google Star Rating (Mean, SD, Min, Max)
mean(data$star_rating)
sd(data$star_rating)
min(data$star_rating)
max(data$star_rating)

# Qualitative variable: Worker Enthusiasm ( 0 = No, 1 = Yes)
table(data$enthusiasm)
mean(data$enthusiasm)       # Enthusiastic (Yes = 1)
1 - mean(data$enthusiasm)   # Not Enthusiastic (No = 0)

# linear regression
linear_model <- lm(star_rating ~as.factor(enthusiasm), data=data)
summary(linear_model)

# Box Plot
boxplot(star_rating~as.factor(enthusiasm), data=data)
