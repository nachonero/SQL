SELECT COUNT(*) FROM flights;

SELECT origin,AVG(ArrDelay) AS prom_arribades, AVG(DepDelay) AS prom_sortides
FROM flights
GROUP BY origin;

SELECT origin, colYear, colMonth, AVG(ArrDelay) AS Prom_arribades
FROM flights
GROUP BY origin, ColYear, colMonth;

SELECT usairports.City, colYear, colMonth, AVG(ArrDelay) AS Prom_arribades
FROM flights
INNER JOIN usairports
ON usairports.IATA = flights.Origin
GROUP BY usairports.City, ColYear, colMonth;

SELECT UniqueCarrier, ColYear, ColMonth, SUM(Cancelled) AS totalcancelled
FROM flights
GROUP BY UniqueCarrier, colYear, colMonth
ORDER BY Cancelled DESC;

SELECT TailNum, SUM(Distance) AS TotalDistance
FROM flights
GROUP BY TailNum
ORDER BY Distance DESC
LIMIT 10;

SELECT UniqueCarrier, AVG(ArrDelay) AS AVGDelay
FROM flights
WHERE ArrDelay NOT BETWEEN 0 AND 10
GROUP BY UniqueCarrier
ORDER BY AVGDelay DESC;













