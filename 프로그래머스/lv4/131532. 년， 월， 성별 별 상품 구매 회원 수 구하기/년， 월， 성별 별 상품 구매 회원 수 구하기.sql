-- 코드를 입력하세요
# SELECT * FROM USER_INFO
# SELECT * FROM ONLINE_SALE

SELECT YEAR(SALES_DATE) YEAR , MONTH(SALES_DATE) MONTH , GENDER , COUNT(DISTINCT U.USER_ID) USERS
FROM USER_INFO U JOIN ONLINE_SALE O ON U.USER_ID = O.USER_ID
WHERE GENDER IN (0,1)
GROUP BY MONTH , GENDER
ORDER BY MONTH , GENDER 