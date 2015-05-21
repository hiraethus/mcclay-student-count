library(XML)

file.to.write.to <- sprintf("~/Documents/McClay\ Library\ Student\ Count/building_occupancy_%s.log", Sys.Date())
poll.gap.seconds <- 60

cat("\"Time\",", "\"Building Occupancy\"\n", sep="", file = file.to.write.to)
while(T) {
  xml <- xmlTreeParse("http://qub.ac.uk/directorates/InformationServices/pcs/sentry/")
  building.occupancy <- as.numeric(xmlValue(xml$doc$children$sentry[[1]]))
  
  cat("\"", Sys.time(), "\",\"",building.occupancy,"\"\n", sep="", file = file.to.write.to, append = T)
  Sys.sleep(poll.gap.seconds)
}

