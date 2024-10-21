# Load necessary library
library(ggplot2)

# Load the dataset
house_prices <- read.csv("C:/Users/Hirdesh Kumar Yadav/Downloads/house-prices.csv")

# Display the structure of the dataset
str(house_prices)

# Summary statistics of the dataset
summary(house_prices)

# Remove rows with missing values
house_prices <- na.omit(house_prices)

# Fit a multiple linear regression model to predict Price based on all other variables
model <- lm(Price ~ ., data = house_prices)

# Display the summary of the regression model
summary(model)

# Predict house prices based on the trained model
house_prices$Predicted_Price <- predict(model, newdata = house_prices)

# Visualize actual prices vs predicted prices
ggplot(house_prices, aes(x = Price, y = Predicted_Price)) +
  geom_point(color = 'blue') +  # Scatter plot of actual vs predicted prices
  geom_abline(intercept = 0, slope = 1, color = 'red', linetype = 'dashed') +  # Ideal line where actual = predicted
  labs(title = 'Actual vs Predicted Prices', x = 'Actual Price', y = 'Predicted Price') +
  theme_minimal()  # Minimal theme for cleaner visualization

# Visualize the residuals (errors) of the model
ggplot(house_prices, aes(x = Predicted_Price, y = residuals(model))) +
  geom_point(color = 'purple') +  # Scatter plot of residuals
  geom_hline(yintercept = 0, linetype = 'dashed', color = 'red') +  # Horizontal line at 0 (no error)
  labs(title = 'Residuals Plot', x = 'Predicted Price', y = 'Residuals') +
  theme_minimal()  # Minimal theme for cleaner visualization
