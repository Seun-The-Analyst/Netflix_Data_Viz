#check working directory
getwd()

#import csv file to global environment
df <- read.csv("Netflix_shows_movies.csv", header = TRUE, sep = ",")
install.packages("ggplot2")

# R Visualization: Ratings Distribution

# Load necessary libraries
library(ggplot2)
library(readr)

# Read the data (update the path if needed)
df <- read.csv("Netflix_shows_movies.csv", header = TRUE, sep = ",")

# Rename the column if necessary
names(df)[names(df) == "listed_in"] <- "genre"

# Plot Ratings Distribution
if ("rating" %in% names(df)) {
  ggplot(df, aes(x = rating)) +
    geom_bar(fill = "skyblue") +
    labs(title = "Ratings Distribution", x = "rating", y = "Number of Titles") +
    theme(axis.text.x = element_text(angle = 45, hjust = 1))
} else {
  print("No 'rating' column found.")
}
