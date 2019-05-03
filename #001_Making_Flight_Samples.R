library(nycflights13)
library(dplyr)
library(readr)


get_flights_sample <- function(sample_size){
  set.seed(1729)
  n_flights <- dim(flights)[1]
  flights_sample <- flights[sample(n_flights, sample_size, replace = FALSE),] %>%
    arrange(year, month, day, dep_time)  
  
}

sample_1000 <- get_flights_sample(1000)
sample_10000 <- get_flights_sample(10000)

write_csv(sample_1000, "data/flights_sample_1000.csv")
write_csv(sample_10000, "data/flights_sample_10000.csv")
write_csv(flights, "data/flights.csv")
write_csv(airlines, "data/airlines.csv")
write_csv(airports, "data/airports.csv")
write_csv(planes, "data/planes.csv")
write_csv(weather, "data/weather.csv")

