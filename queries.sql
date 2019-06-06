/* 
Given a game with device id and payment on each day, and given the data on three days, 
ask to calculate all the payment for each device in these three days. 
*/

USE mg;

SHOW TABLES;

SELECT device_id, SUM(payment) FROM 
(
  (SELECT * FROM a)
  UNION
  (SELECT * FROM b)
  UNION
  (SELECT * FROM c)
) AS t
GROUP BY device_id;

SELECT 
a.device_id, a.payment '11/22', b.payment '11/23', c.payment '11/24',
a.payment + b.payment + c.payment total
FROM a
JOIN b ON a.device_id = b.device_id
JOIN c ON b.device_id = c.device_id;

