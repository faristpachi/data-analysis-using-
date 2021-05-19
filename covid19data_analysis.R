library(covid19.analytics)
library(prophet)
library(ggplot2)
library(dplyr)
library(lubridate)

tsc= covid19.data(case='ts-confirmed')
tsc= tsc %>% filter(Country.Region=='US')
tsc

tsc= data.frame(t(tsc))
tsc
tsc= cbind(rownames(tsc), data.frame(tsc, row.names=NULL))
colnames(tsc)=c('Date','Confirmed')
tsc=tsc[-c(1:4),]
tsc

summary(tsc)
tsc$Date=ymd(tsc$Date)
summary(tsc)
tsc$Confirmed=as.numeric(tsc$Confirmed)
summary(tsc)
qplot(Date,Confirmed,data = tsc,main='Covid 19 Confirmed Cases in USA')

qplot(Date,Confirmed,data = tsc,main='Covid 19 Confirmed Cases in USA')