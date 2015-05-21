student.count <- read.csv("~/Desktop/building_occupancy.log")

attach(student.count)

png("students_in_mcclay.png", width=800, height=600)
plot(x = as.POSIXct(Time, origin="1970-01-01"), y = Building.Occupancy,
     xlab="Time", ylab="Number Of Students", main="Students in the McClay Library")

dev.off()