## a script for fetching OJ data from hapi.oxford-man.ox.ac.uk

##Requires connection to Oxford VPN when running!!
# require R timeseries library
library(zoo)
urlData = "http://hapi.oxford-man.ox.ac.uk/hapi37.php?t=c&s=JO&f=low,high,close&d1=1983-01-01&d2=1984-01-01&a=non"
ts <- read.zoo(urlData, header = TRUE, sep = ",", format = "%Y/%m/%d")
ts
head(ts)
tail(ts)
