library(data.table)
library(rgdal)

setwd("C:/Users/Owner/Documents/GitHub/mapbox-workshop")

poe <- fread("C:/Users/Owner/Documents/GitHub/cutflower_model/data/POE_geocoded.csv")
poe <- poe[!City == "International Falls"]
origin <- fread("C:/Users/Owner/Documents/GitHub/cutflower_model/data/origin_geocoded.csv")

coordinates(poe) <- c("longitude_poe", 'latitude_poe')
origin <- na.omit(origin)
coordinates(origin) <- c("longitude_origin", 'latitude_origin')

plot(poe)
plot(origin)

writeOGR(poe, "poe",
         layer="poe", driver="GeoJSON") 

writeOGR(origin, "origin",
         layer="origin", driver="GeoJSON") 
