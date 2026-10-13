# Script for modelling the dispersion of individuals of a popultion

# New packages to be installed:
# install.packages("terra")
# install.packages("sdm")

# Check the packages
library(terra)
library(sdm)

# Path to the file
path <- system.file("external/species.shp", package="sdm")

# Import the vector data
rana <- vect(path)
rana

# Plotting the data
plot(rana)

#Looking at coordinates
coordinates <- geom (rana) 

#Subset the dataset extracting presences 
presence <- rana[rana$Occurrence == 1]

#Exercise: select and assign absences 
#option 1
absence <- rana [rana$Occurrence == 0]
#option 2
absence <- rana [rana$Occurrence != 1]

#Plot the presences 
plot(presence) 

#Plot absence 
plot(absence)

#Exercise: plot presences and absences with different colors in the same plot 
plot(presence, col="blue")
.... 
plot (presence, col="blue")
plot (absence, col ="blue")
points (absence, col = "violet")
> dev.off()
null device 

#Exercise: plot presences and absences with different colors in the same plot 
plot(presence, col "blue", cex=2.5)
#bei.extra [1]
# not available column if I use the name without capital letters 
presence <- rana [rana$occurrence == 1]  #num: NA
presence 

plot (presence)


#SUBSET YOUR DATA!
presence <- rana [rana$Occurrence == 0]  #be careful with the capital letter 

