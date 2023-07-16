install.packages("quantmod")
library(quantmod)

install.packages("ggplot2")
library(ggplot2)

# stocks to visualize
stocks = c("AAPL", "NFLX", "AMZN", "TSLA", "GOOGL")

# visualize for past year
currDate = Sys.Date()
startDate = currDate %m-% years(1)
getSymbols(stocks, from = startDate, to = currDate, auto.assign = TRUE)

