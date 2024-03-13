--USER DEFINED EXCEPTION
SET SERVEROUTPUT ON
DECLARE
BANK_BALANCE NUMBER := 10000;
AMT NUMBER := &AMT;
LESS_AMOUNT EXCEPTION;
RSULT NUMBER;

BEGIN
 IF AMT > BANK_BALANCE THEN
RAISE LESS_AMOUNT ;
ELSE 
RSULT := BANK_BALANCE - AMT;
DBMS_OUTPUT.PUT_LINE(RSULT);
END IF ;

EXCEPTION 
WHEN LESS_AMOUNT THEN
DBMS_OUTPUT.PUT_LINE('INSUFFICIENT FUND');
END;
--===============================================================================
SET SERVEROUTPUT ON
DECLARE
 BANK_BALANCE NUMBER:=10000;
 AMT NUMBER:=&AMT;
 LESS_AMOUNT EXCEPTION;
 RSLT NUMBER;
 
BEGIN
IF AMT>BANK_BALANCE THEN
 RAISE LESS_AMOUNT;
 ELSE
 RSLT:=BANK_BALANCE-AMT;
 DBMS_OUTPUT.PUT_LINE(RSLT);
 END IF;
 EXCEPTION
 WHEN LESS_AMOUNT THEN
 DBMS_OUTPUT.PUT_LINE('INSUFFICIENT FUNDS');
END;

-------------------------------------------------------------------
SET SERVEROUTPUT ON
DECLARE
   BANK_BALANCE NUMBER := 10000;
   AMT NUMBER := &AMT;
   INSUFFICIENT_FUNDS EXCEPTION;
   INVALID_AMOUNT EXCEPTION;
   NEGATIVE_AMOUNT EXCEPTION;
   RSLT NUMBER;
BEGIN
   IF AMT < 0 THEN
      RAISE NEGATIVE_AMOUNT;
   ELSIF AMT > BANK_BALANCE THEN
      RAISE INSUFFICIENT_FUNDS;
   ELSIF AMT = 0 THEN
      RAISE INVALID_AMOUNT;
   ELSE
      RSLT := BANK_BALANCE - AMT;
      DBMS_OUTPUT.PUT_LINE('New Balance: ' || RSLT);
   END IF;
EXCEPTION
   WHEN INSUFFICIENT_FUNDS THEN
      DBMS_OUTPUT.PUT_LINE('INSUFFICIENT FUNDS');
   WHEN INVALID_AMOUNT THEN
      DBMS_OUTPUT.PUT_LINE('INVALID AMOUNT: Zero amount is not allowed');
   WHEN NEGATIVE_AMOUNT THEN
      DBMS_OUTPUT.PUT_LINE('INVALID AMOUNT: Negative amount is not allowed');
END;








