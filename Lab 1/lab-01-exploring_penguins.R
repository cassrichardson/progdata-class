# Loading in palmerpenguins data and tidyverse package
library(palmerpenguins)
library(tidyverse)

# Exploring the data 
?palmerpenguins
  # Step 1: Use the help function to see what these data are 
    # This data set contains info about 3 different types of penguins on islands in the Palmer Archipelago near Antartica. 

View(penguins)
  # Step 2: View the whole data set to see what we're working with! 

dim(penguins)
  # Step 3: Exploring the dimensions of the data frame. 
   # This data frame have 344 rows or observations and 8 columns or variables.

glimpse(penguins)
  # Step 4: Exploring the data further. What kinds of variables are there? 
    # Of the 8 variables, we have 3 factors, 2 numeric, and 3 integers 

names(penguins)
  # Step 5: So we know how many and what kinds of variables, but what are these variables called?
    # Variables in this data: "species" "island" "bill_length_mm" "bill_depth_mm" "flipper_length_mm" "body_mass_g" "sex" "year"

# Descriptive statistics of the Palmer penguins 
penguins_data <- palmerpenguins::penguins
  # Step 1: Assign penguins as an object in our environment, so we can use it for descriptives

mean(penguins_data$body_mass_g, na.rm = TRUE)
  # Step 2: Find mean body mass of all penguins we have data for (exclude missing data).
    # The mean body mass is 4201.75 grams. 

range(penguins_data$bill_length_mm, na.rm = TRUE)
  # Step 3: Find the range of bill lengths of all penguins we have data for. 
    # The bill length ranges from 32.1mm to 59.6mm