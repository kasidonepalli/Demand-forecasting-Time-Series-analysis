# Demand forecasting- Fargo Health group

## Problem Statement 
There exists an acute shortage of examining physicians at the health centres for the disability examinations, so Fargo has to outsource their disability patients to OCs. These OCs are highly expensive for the company, and hence, Fargo requires a data-based approach to anticipate the incoming examination demand to effectively reallocate or schedule physicians at their HCs based on the predicted demand.

## Solution
By looking at the past data, we will be able to identify patterns and trends ,and also predict future demand for disability examinations Frago health will receive. This will help Fargo Health Group allocate physicians to the right locations, so that they can meet the 30-day mandate. That is, based on the predictions, we can send physicians from clinics with low demand to those with high demand or hire more physicians at the Abbeville clinic accordingly using Time-series analysis.

## Skills used
- Demand forecasting
- Data cleaning
- Handling outliers and missing values
- Data Imputation strategies
- Time-series modelling
- ARIMA model selection
- Model accuracies and diagnostics
- Translating business problems into a mathematical problem and vice-versa
- Evaluation of Client's expectations

## Snapshots of analysis

Fig-1: Seasonality in data

<img width="290" alt="image" src="https://github.com/kasidonepalli/Demand-forecasting-Time-Series-analysis/assets/136610679/ce0d07dc-ea01-416c-8640-f458522e0dc1">

We can see that over the years there has been an increase in the number of patients/tests at an increasing rate with the gap between consecutive years (specifically 2013 and 2012) increasing. However, the changes throughout the year do not seem to differ across the months.


Fig-2:Forecast of health examination demand for an year after 2013 along with 95% confidence intervals

<img width="446" alt="image" src="https://github.com/kasidonepalli/Demand-forecasting-Time-Series-analysis/assets/136610679/a4a59330-1630-43bb-a821-1c39925e7a82">

The above graph illustrates the forecasted values for the next 12 months (from Dec 2013 to Nov 2014) along with the 95% prediction intervals. The point forecast (or the expected value) for December 2013 is 5555.219, with aa 95% prediction interval of 4768.620 to 6341.817. The point forecasts for the following months gradually increase, reflecting an increasing trend in the cardiovascular examination demand. The prediction intervals also widen as the forecast horizon increases, reflecting increasing uncertainty as we move further away from the observed data.


