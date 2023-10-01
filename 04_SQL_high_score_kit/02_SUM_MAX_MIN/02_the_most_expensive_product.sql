-- PRODUCT 테이블에서 판매 중인 상품 중 가장 높은 판매가를 출력하는 SQL문

SELECT MAX(PRICE) MAX_PRICE
FROM PRODUCT
