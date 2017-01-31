      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  CASH PIC 999 VALUES 123.
       01  TOTAL PIC 9999 VALUES 1000.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "CASH = "CASH.
            DISPLAY "TOTAL = "TOTAL.
            ADD CASH,20 TO TOTAL.
            DISPLAY "CASH + TOTAL = "TOTAL.
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
