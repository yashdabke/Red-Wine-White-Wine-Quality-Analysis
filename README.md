# Wine Quality Analysis

## Overview

This project focuses on the comprehensive analysis of red and white wine quality, utilizing statistical measures and visualizations to explore relationships between various parameters and wine quality. 
The analysis involves two distinct R scripts, each dedicated to red and white wine datasets.

## Red Wine Analysis

### Script: `red_wine_analysis.R`

#### Purpose

The `red_wine_analysis.R` script aims to delve into the qualities of red wine, offering a detailed exploration through the following steps:

1. **Data Loading:** Reads the dataset `winequality_red.csv` using the `read.csv` function, ensuring a structured data frame is available for analysis.
2. **Data Exploration:** Uses `head` to provide an initial glimpse into the red wine dataset, displaying the first few rows to better understand the structure and contents.
3. **Quality Visualization:** Produces a bar graph (`barplot`) to visually represent the distribution of wine quality, providing an immediate overview of the dataset.
4. **Principal Component Analysis (PCA):** Applies PCA using the `princomp` function to identify underlying patterns and relationships within the numeric parameters of the red wine dataset.
5. **Density Histogram:** Constructs a histogram (`hist`) to illustrate the density distribution of the dataset, offering insights into the concentration of specific values.
6. **Quality Categorization:** Defines a function to categorize wines into "good," "normal," or "bad" quality based on predefined thresholds, creating a qualitative overview of wine quality.
7. **Mean Calculation:** Computes the mean values for various parameters, such as volatile acidity, chlorides, alcohol, residual sugar, and sulphates, providing a quantitative measure of central tendency.
8. **Box Plot:** Generates a box plot (`boxplot`) to visualize the relationship between wine quality and alcohol content, helping to identify potential patterns or outliers.
9. **Scatter Plots:** Creates scatter plots (`plot`) for specific quality categories (e.g., Quality = 7, 6, 5) to explore relationships with parameters like fixed acidity, volatile acidity, free sulfur dioxide, and total sulfur dioxide.
10. **Quality Comparison Graphs:** Develops bar graphs (`barplot`) to compare wine quality with chlorides and sulphates, facilitating an understanding of potential correlations.

#### Instructions

1. **Dataset Requirement:** Ensure the presence of the `winequality_red.csv` file in the same directory as the script.
2. **Execution:** Run the script in an R environment to execute the analysis and generate visualizations.

## White Wine Analysis

### Script: `white_wine_analysis.R`

#### Purpose

The `white_wine_analysis.R` script mirrors the structure of the red wine analysis script, tailored to explore the qualities of white wine using the dataset `winequality_white.csv`. The script encompasses similar steps of data loading, exploration, visualization, and analysis as the red wine script.

#### Instructions

1. **Dataset Requirement:** Confirm the existence of the `winequality_white.csv` file in the script's working directory.
2. **Execution:** Run the script in an R environment to conduct the analysis and generate visualizations specific to white wine.

## Dependencies

Both scripts utilize standard R libraries for data manipulation, analysis, and visualization. 
Ensure you have an R environment set up with necessary libraries installed.

## Conclusion

The combined analysis of red and white wine datasets provides a holistic understanding of wine quality. 
The visualizations, statistical summaries, and categorizations offer valuable insights into the factors influencing wine quality, making the project a valuable resource for wine enthusiasts, researchers, and industry professionals.
