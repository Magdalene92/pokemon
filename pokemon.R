setwd("C:/Users/Magda/Downloads")
file_path <- "C:/Users/Magda/Downloads/pokemons.csv"

# Read the CSV file into a data frame
data <- read.csv(file_path)

# Display the first few rows of the data frame
head(data)
# Install and load necessary libraries
if (!require("tidyverse")) install.packages("tidyverse")

# Set working directory and read the Pokemon dataset
setwd("C:/Users/Magda/Downloads")  # Update with your directory
file_path <- "C:/Users/Magda/Downloads/pokemons.csv"
pokemon_data <- read.csv(file_path)

# Explore the dataset
summary(pokemon_data)

# Visualize Pokemon types
library(ggplot2)
ggplot(pokemon_data, aes(x = type1, fill = type1)) +
  geom_bar() +
  theme_minimal() +
  labs(title = "Distribution of Pokemon Types")

# Create a scatter plot of Power vs. Type
# Assuming 'type1' and 'type2' are categorical variables
ggplot(pokemon_data, aes(x = as.factor(type1), y = as.factor(type2), color = type1)) +
  geom_point() +
  theme_minimal() +
  labs(title = "Power Distribution of Pokemon Types", x = "type1", y = "type2")


# Perform some data analysis
fastest_pokemon <- pokemon_data[which.max(pokemon_data$speed), ]
slowest_pokemon <- pokemon_data[which.min(pokemon_data$speed), ]

fastest_pokemon
slowest_pokemon 
