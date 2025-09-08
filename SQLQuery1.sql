WITH hotels AS (
SELECT * FROM dbo.['2018$']
UNION
SELECT * FROM dbo.['2019$']
UNION
SELECT * FROM dbo.['2020$'])

SELECT * FROM hotels

LEFT JOIN dbo.market_segment$
ON hotels.market_segment = market_segment$.market_segment
LEFT JOIN dbo.meal_cost$
ON meal_cost$.meal = hotels.meal


#POWERBI
Revenue = (stays_in_weekend_nights + stays_in_week_nights)*(adr)*(1-Discount)
Total Nights = stays_in_weekend_nights + stays_in_week_nights
Parking Percentage= required_car_parking_spaces/Total Nights

