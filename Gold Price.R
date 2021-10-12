##Retrieve Gold Prices from FRED

# Use the "quantmod" package to get the data
library(quantmod)

# Retrieve the following data from FRED: naming object as "gold price"
gold_prices <- getSymbols("GOLDPMGBD228NLBM" ,src="FRED",auto.assign=FALSE)

# Remove all "NA" observations from this series.
gold_prices <- na.omit(gold_prices)

# Restrict the dates of the series from 20 last years 2001-10-01 to 2021-10-01
gold_prices <- gold_prices["2001-10-01/2021-10-01"]

#name for gold price list
names(gold_prices) <- "gold prices"

head(gold_prices,3)
tail(gold_prices,3)

#Plot gold prices data
plot(gold_prices)  

