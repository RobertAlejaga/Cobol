      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
              SELECT Sales-File ASSIGN TO "DEALS.DAT"
                        ORGANIZATION IS LINE SEQUENTIAL.

              SELECT Work-File ASSIGN TO "SORT.TMP".

              SELECT Summary-Report ASSIGN TO "AROMASALES.RPT"
                        ORGANIZATION IS LINE SEQUENTIAL.


              SELECT Sorted-File ASSIGN TO "SORTSALE.DAT"
                        ORGANIZATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       FD Sales-File.
       FD  Sales-Rec.
           88 End-Of-Sales-File    VALUE HIGH-VALUES.
           02  SF-Customer-Id              PIC X(5).
           02  SF-Customer-Name            PIC X(20).
           02  SF-Oil-Id.
               03  FILLER              PIC X.
           88 Essential-Oil   VALUE "E".
               03  SF-Oil-Name         PIC 99.
           02 SF-Unit-Size             PIC 99.
           02 SF-Units-Sold            PIC 999.

       SD Work-File.
       01 Work-Rec.
           88 End-Of-Work-File VALUE HIGH-VALUES.
           02  WF-Customer-Id              PIC X(5).
           02  WF-Customer-Name            PIC X(20).
           02  WF-Oil-Id.
               03 FILLER               PIC X.
               03 WF-Oil-Num           PIC 99.
           02 WF-Unit-Size             PIC 99.
           02 WF-Units-Sold            PIC 999.

       FD Summary-Report.
       01 Print-Line                   PIC X(64).

       FD Sorted-File.
       01 Sorted-Rec                   PIC X(33).



       WORKING-STORAGE SECTION.


       01  Oils-Table.
           02  Oil-Cost-Values.
               03 FILLER               PIC X(40)
                       VALUE "0041003200450050002910250055003900650075".
               03 FILLER               PIC X(40)
                       VALUE "0080004400500063006500550085004812500065".
               03 FILLER               PIC X(40)
                       VALUE "0060005500670072006501250085006511150105".
           02  FILLER REDEFINES Oil-Cost-VALUES.
               03 OIL-COST           PIC 99V99 OCCURS 30 TIMES.

       01  Report-Heading-Line         PIC X(44)
                   VALUE "              AROMAMORA SUMMARY SALES REPORT"

       01  Report-Heading-Underline.
           02  FILLER                  PIC X(13) VALUE SPACES.
           02  FILLER                  PIC X(32) VALUE ALL "-".

       01  Topic-Heading-Line.
           02  FILLER                  PIC BX(13) VALUE " CUSTOMER NAME".
           02  FILLER                  PIC X(8) VALUE SPACES.
           02  FILLER                  PIC X(10) VALUE "CUST-ID   ".
           02  FILLER                  PIC X(8) VALUE "SALES   ".
           02  FILLER                  PIC X(11) VALUE "QTY SOLD   ".
           02  FILLER                  PIC X(11) VALUE "SALES VALUE".

       01  Customer-Sales-Line.
           02  Prn-Customer-Name           PIC X(20).
           02  Prn-Customer-Id             PIC BBB9(5).
           02  Prn-Customer-Sales          PIC BBBBBZZ9.
           02  Prn-Qty-Sold            PIC BBBBBZZ,ZZ9.
           02  Prn-Sales-Value         PIC BBBB$$$,$$9.99.

       01  Entire-Sales-Line.
           02  FILLER                  PIC X(33) VALUE SPACES.
           02  FILLER                  PIC X(19) VALUE "TOTAL SALES       :".
           02  Prn-Total-Sales         PIC BBBBBBZZ,ZZ9.

       01  Entire-Sales-Value-Line.
           02  FILLER                  PIC X(33) VALUE SPACES.
           02  FILLER                  PIC X(19) VALUE "TOTAL SALES VALUE :".
           02  Prn-Total-Sales-Value   PIC B$$$$,$$9.99.

       01  Customer-Totals.
           02  Customer-Sales              PIC 999.
           02  Customer-Qty-Sold           PIC 9(5).
           02  Customer-Sales-Value        PIC 9(5)V99.

       01  Final-Totals.
           02  Entire-Sales             PIC 9(5)    VALUE ZEROS.
           02  Entire-Qty-Sold          PIC 9(6)    VALUE ZEROS.
           02  Entire-Sales-Value       PIC 9(6)V99 VALUE ZEROS.

       01  Temp-Variables.
           02  Sale-Qty-Sold           PIC 99999.
           02  Value-Of-Sale           PIC 999999V99.
           02  Prev-Cust-Id            PIC X(5).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
