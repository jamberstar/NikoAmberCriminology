

dat <- read.csv(file = "/Users/nikoamber/Library/Mobile Documents/com~apple~CloudDocs/Penn/Freshman Fall/Criminology/Final Project Data with Rates.csv")

library(tidyverse)
library(usmap)

head(dat)
names(dat) [1] <- "state"

hist(dat$REA)
plot_usmap(data = dat, values = "Trump") +
  scale_fill_continuous(aes( color="red"))


