# R code for population density

# Installing packages
intsall.packages("spatstat")

# Using the package(s)
library(spatstat)

# Recall the data
bei

# Looking at the points in space
plot(bei)

# Changing the pch
plot(bei, pch=15)

# Decreasing the dimension
plot(bei, pch=15, cex=.5)

# Drivers
bei.extra

# Plotting variables
plot(bei.extra)

# Subsetting a dataset: NEW CONCEPT!
# There are two different methods to make a subset:
# first: name of the variable and the $ symbol
# second: number of the layer and [] for tables, [[]] for map layers

elevation <- bei.extra$elev
# output
elevation

# Plot elevation
plot(elevation)

# Subset by the number of the layer/variable
elevation2 <- bei.extra[[1]]

# In case bei.extra was a table: bei.extra[1]

# Plot the new object
plot(elevation2)

# Creating our first map!
densitymap <- density(bei)

# Output
densitymap

# Plot the result
plot(densitymap)

# Plotting the points ontop of the density map
points(bei, cex=.5)

# New concept!: MULTIFRAME!
# Creating the multiframe
par(mfrow=c(1,2))
plot(elevation)
plot(densitymap)

# Exercise: Put the elevation map ontop of the densitymap
par(mfrow=c(2,1))
plot(elevation)
plot(densitymap)

# If you get any graphical ussue here is your friend:
dev.off()

#Change colors in our maps 
#wrong : cl <- colorRampPalette("blue", "green", "red")
#why?
> # these are elements of an array 
> #matteo <- c(5,10,20,50,80)

cl <- colorRampPalette (c("blue", "green", "red") 
                        #Plot the density map and change its color thanks to cl 
            
# Plot the density map using this palette
plot(density, col = cl(100))

#plot(densitymap, col="blue")
plot(densitymap, col="cl")


cl <- colorRampPalette (c("blue", "green", "mediumpurple") 
plot(densitymap, col="cl")

#Nuances 
cl3 <- colorRampPalette (c("blue", "green", "mediumpurple")) (3)
plot(densitymap, col=cl3)
 #Let's put 10 nuances 
cl10 <- colorRampPalette(c("blue", "green", "mediumpurple")) (100)
plot(densitymap, col=cl100)

#Exercise: make a multiframe with the map with 10 nuances ontop of that with 100

# --------------------------------------------------
# CREATE COLOUR NUANCES
# --------------------------------------------------

# 3 colour nuances
cl3 <- colorRampPalette(
  c("blue", "green", "mediumpurple")
)(3)

plot(densitymap, col = cl3)


# 10 colour nuances
cl10 <- colorRampPalette(
  c("blue", "green", "mediumpurple")
)(10)

plot(densitymap, col = cl10)


# 100 colour nuances
cl100 <- colorRampPalette(
  c("blue", "green", "mediumpurple")
)(100)

plot(densitymap, col = cl100)


# --------------------------------------------------
# MULTIFRAME: 10 NUANCES ON TOP, 100 ON BOTTOM
# --------------------------------------------------

par(mfrow = c(2, 1))

plot(densitymap, col = cl10, main = "10 nuances")
plot(densitymap, col = cl100, main = "100 nuances")

# Return to a single frame
par(mfrow = c(1, 1))



#Professor answer
par(mfrow=c(2,1))
plot (densitymap, col=cl10)
plot (


  
 # --------------------------------------------------
# SDM: SPECIES DISTRIBUTION MODELLING
# --------------------------------------------------

# Install terra (run only once)
install.packages("terra")

# Load terra
library(terra)

# Install sdm
install.packages("sdm")

# Load sdm
library(sdm)

file <- system.file("external/speices.shp",package="sdm")
#Path to the file 
path <- system.file("external/species.shp", packsage="sdm")

  #?vect function + name of the pathway

  v <- vect (f) 


  # Import the vector data 
 rana <- vect(path) 
rana 

  
  

  
  
  
                        
