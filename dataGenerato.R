# 1. A vector with a set of 100 species names, randomly selected from a vector of 5 species names of your choosing.
Organisim=sample(c("Pinkus grafiarous","Purlous elefanous","Grenous benous", "Orng samples", "Specious peoples"), 100, replace = T)

# 2. A vector of 100 values for Limb_width, randomly selected using a distribution of your choice that makes sense for the width of limbs (e.g. no negative or zero values).
Limb_width=rpois(100,5)

# 3. A vector of 100 values for Limb_length, again randomly selected from a distribution of your choosing, but the numbers must make sense.
Limb_length=rpois(100,5)

# 4. A vector of 100 values for Observer, randomly selected from a vector of 3 names (you can use any names you like).
Observer=sample(c("Alyssa G", "Josh G", "Sam P"), 100, replace = T)

# 5. Combine all of the vectors into a data.frame.
measurements=data.frame(Organisim, Limb_width, Limb_length, Observer)

# 5. Export to a CSV file called measurements.csv
write.csv(measurements,"./measurements.csv", row.names = F)

