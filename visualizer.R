install.packages("tidyquant")
library(tidyquant)

install.packages("ggplot2")
library(ggplot2)

# stocks to visualize
stocks = c("AAPL", "NFLX", "AMZN", "TSLA", "GOOGL")

# visualize for past year
currDate = Sys.Date()
startDate = currDate %m-% years(1)

prices = tq_get(stocks, from = startDate, to = currDate, get = "stock.prices")
prices %>%
  ggplot2(aes(x = date, y = adjusted, color = symbol)) + 
  geom_line()

