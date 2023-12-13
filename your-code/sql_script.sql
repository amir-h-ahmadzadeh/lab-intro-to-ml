USE austin_weather_db;

-- a)
SELECT 
    COUNT(DISTINCT (Date))
FROM
    austin_weather;
    
    
-- b)
SELECT 
    Date, 
    TempHighF
FROM
    austin_weather
WHERE
	TempHighF = (SELECT MAX(TempHighF) FROM austin_weather);
    
    
-- c)
SELECT 
    AVG(HumidityAvgPercent)
FROM
    austin_weather;   
    
-- d)
SELECT 
	Date,
    SeaLevelPressureAvgInches,
    DewPointAvgF
FROM
	austin_weather
WHERE 
	DewPointAvgF > 28
ORDER BY
	SeaLevelPressureAvgInches DESC
LIMIT 
	10;
    


    
    SELECT * FROM austin_weather
    
