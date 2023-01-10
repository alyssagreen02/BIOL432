# Read a file called  measurements.csv
measurements=read.csv("measurements.csv")

# Import dplyr
library(dplyr)

#Add new column called volume, where volume of limbs is estimated using volume of a cylinder
measurements=measurements%>%mutate(Organisim, Limb_width, Limb_length, Observer, Volume=(Limb_width/2)^2*Limb_length*pi)

#Export to a CSV file called measurements.csv
write.csv(measurements,"./measurements.csv", row.names = F)
