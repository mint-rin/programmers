-- USER_INFO 테이블과 ONLINE_SALE 테이블에서 년, 월, 성별 별로 상품을 구매한 회원수를 집계하는 SQL문을 작성해주세요. 
-- 결과는 년, 월, 성별을 기준으로 오름차순 정렬해주세요. 
-- 이때, 성별 정보가 없는 경우 결과에서 제외해주세요.


SELECT YEAR(SALES_DATE) YEAR
     , MONTH(SALES_DATE) MONTH
     , U.GENDER
     , COUNT(DISTINCT U.USER_ID) USERS   -- 상품을 구매한 회원수를 집계(중복 제거)
FROM USER_INFO U
INNER JOIN ONLINE_SALE O
ON U.USER_ID = O.USER_ID
WHERE U.GENDER IS NOT NULL  -- 성별 정보가 없는 경우 결과에서 제외
GROUP BY YEAR(SALES_DATE)
       , MONTH(SALES_DATE)
       , U.GENDER
ORDER BY YEAR   -- 년, 월, 성별을 기준으로 오름차순 정렬
       , MONTH
       , U.GENDER
