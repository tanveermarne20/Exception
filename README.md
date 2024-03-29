# Exception Description

1. An exception in SQL represents a run-time error that occurs during the execution of SQL code.
2. These errors can be caused by various factors, such as invalid data, constraint violations, or system-related issues.


## System Defined Exceptions: 
 1. These are predefined exceptions that are raised by the SQL engine when certain error conditions occur. 
 2. Examples include division by zero, attempting to insert a duplicate key into a unique constraint, or referencing a non-existent table.
 3. Reference the predefined name in the exception-handling routine.
 4.  Sample predefined exceptions: 
 5. NO_DATA_FOUND
 6. TOO_MANY_ROWS
 7. INVALID_CURSOR
 8. ZERO_DIVIDE
 9. DUP_VAL_ON_INDEX

## User-Defined Exceptions:
 1. These are exceptions that are explicitly defined by the user within the SQL code to handle specific error conditions. 
 2. Users can define their own exception names and associate them with custom error-handling code.