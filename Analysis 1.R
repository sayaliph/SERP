
setwd("D:/Dropbox/Sayali/ISB/Academic/SERP data/District 1")

## Input all the data files that are required

# Individual level
health <- read.csv("HH_health_details_dist1.csv",header=T)
names(health)[1]<-paste("hh_id")

# Household level
assets <- read.csv("HH_asset_details_dist1.csv",header=T)

library(plyr)
health.assets <- join(assets, health, by='hh_id', type='inner')
attach(health.assets)


# Need to convert the Y/N variable into 0/1
## Match appropriate columns to create individual entries for analysis

## Retain all the required columns

## Carry on with the analysis