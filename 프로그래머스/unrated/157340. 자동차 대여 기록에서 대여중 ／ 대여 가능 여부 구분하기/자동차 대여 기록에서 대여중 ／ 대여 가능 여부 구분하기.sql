-- 코드를 입력하세요
SELECT CAR_ID , IF(MAX(END_DATE) >='2022-10-16','대여중','대여 가능')AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE START_DATE <= '2022-10-16'
GROUP BY CAR_ID
ORDER BY CAR_ID DESC