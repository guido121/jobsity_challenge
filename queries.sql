--From the two most commonly appearing regions, which is the latest datasource?
SELECT datasource FROM trips_df WHERE region IN 
  (
    SELECT region FROM result_df ORDER BY average_trips_by_region_week DESC, week_start_day DESC LIMIT 2
  ) 
ORDER BY datetime DESC LIMIT 1


--What regions has the "cheap_mobile" datasource appeared in? 

SELECT DISTINCT region FROM trips_df WHERE datasource = 'cheap_mobile'
