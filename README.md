# House-Price-Prediction-Regression
A project focused on predicting house prices using a multiple linear regression model. This repository includes data preprocessing, model training, and visualizations (actual vs. predicted prices and residuals) to evaluate model performance.

This repository contains a project to predict house prices using a multiple linear regression model in R. The dataset used for this analysis includes various features that influence house prices, and the goal is to predict the price based on those features.

## 🛠️ Project Structure

- **house-prices.csv**: The dataset used for building and testing the model.
- **house-prices-prediction.R**: The R script that loads the dataset, builds the model, and generates predictions.

## 📊 Steps Performed

1. **Data Loading and Cleaning**: 
    - The dataset is loaded from a CSV file.
    - Rows with missing values are removed using `na.omit()`.

2. **Model Building**:
    - A multiple linear regression model is fitted to predict house prices based on all other variables in the dataset.

3. **Prediction and Evaluation**:
    - Predictions are made using the trained model.
    - A scatter plot of actual prices vs. predicted prices is visualized.
    - A residuals plot is created to evaluate the model’s errors.

## 🔧 Required Libraries

- `ggplot2`: Used for visualizing the results (actual vs predicted prices and residuals plot).

## 🏁 Getting Started

1. **Clone the repository**:
   ```bash
   git clone https://github.com/iamhirdeshkumar15/House-Price-Prediction-Regression.git
