-- Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

-- Q1: film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
-- Q2: film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
-- Q3: customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir? 
-- Q4: city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı barındıran country_id bilgisini ve şehir sayısını paylaşınız.

-- A1:
SELECT 
  rating, 
  COUNT(*)
FROM film
GROUP BY rating;

-- A2:
SELECT 
  replacement_cost,
COUNT(*)
FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50
ORDER BY replacement_cost ASC;

-- A3:
SELECT 
  store_id,
COUNT(*)
FROM customer
GROUP BY store_id;

-- A4:
SELECT 
  country_id,
COUNT(*)
FROM city
GROUP BY country_id
ORDER BY COUNT(*) DESC;

-- (country_id = 44, count = 60)
