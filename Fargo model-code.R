library(readxl)
library(tseries)
clean_dataset_imputed <- read_excel("C:/Users/91798/Desktop/flame/FSP/courses'/business analytics/clean_dataset_imputed.xlsx")
View(clean_dataset_imputed)

#install.packages("forecast")
library(forecast)

df<-clean_dataset_imputed
ts_data <-df

ts_data_ts <- ts(ts_data$Incoming_interpolate, start = c(2006,1), frequency = 12)

# Fit an Auto ARIMA model
auto_arima_model <- auto.arima(ts_data_ts, trace = TRUE, stepwise = FALSE)


#residual diagnostics
checkresiduals(auto_arima_model)

# Print the summary of the model
summary(auto_arima_model)


# Generate forecasts for the next 24 time periods
forecast_values <- forecast(auto_arima_model, h=12)

# Plot the forecasted values and the 95% confidence interval
plot(forecast_values)

print(forecast_values)


#manually finding the best model, to cross check if auto_arima is working correctly
adf_test <- adf.test(ts_data_ts)
if (adf_test$p.value > 0.05) {
  ts_data_ts_diff <- diff(ts_data_ts, differences = 1)
} else {
  ts_data_ts_diff <- ts_data_ts
}


#the data is non-stationary, so d is chosen to be 1
best_model <- NULL
best_aic <- Inf

for (p in 0:2) {
  for (q in 0:2) {
    arima_model <- arima(ts_data_ts_diff, order = c(p,0, q))
    aic <- AIC(arima_model)
    if (aic < best_aic) {
      best_model <- arima_model
      best_aic <- aic
      best_params <- c(p, 1, q)
    }
  }
}

# Print the best model and ARIMA parameters
cat("Best ARIMA model: ", best_params[1], best_params[2], best_params[3], "\n")
cat("AIC value: ", best_aic, "\n")






