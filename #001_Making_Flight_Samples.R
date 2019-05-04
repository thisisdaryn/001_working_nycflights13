library(nycflights13)
library(dplyr)
library(readr)


get_flights_sample <- function(sample_size){
  set.seed(1729)
  n_flights <- dim(flights)[1]
  flights_sample <- flights[sample(n_flights, sample_size, replace = FALSE),] %>%
    arrange(year, month, day, dep_time)  
  
}

sample_a <- get_flights_sample(12345)
sample_b <- get_flights_sample(56789)

write_csv(sample_a, "data/flights_sample_a.csv")
write_csv(sample_b, "data/flights_sample_b.csv")
write_csv(flights, "data/flights.csv")
write_csv(airlines, "data/airlines.csv")
write_csv(airports, "data/airports.csv")
write_csv(planes, "data/planes.csv")
write_csv(weather, "data/weather.csv")

