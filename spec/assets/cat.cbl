000010 IDENTIFICATION DIVISION.
000020 PROGRAM-ID. CAT.
000030 DATA DIVISION.
000040 WORKING-STORAGE SECTION.
000050 01 WS-STRING PIC X(65536).
000060 01 I PIC S9(4) BINARY.
000070 PROCEDURE DIVISION.
000080 ACCEPT WS-STRING.
000090 PERFORM VARYING I FROM LENGTH OF WS-STRING BY -1
000100           UNTIL I LESS THAN 1 OR WS-STRING(I:1) NOT = ' '
000110 END-PERFORM
000120 IF I > ZERO
000130    DISPLAY WS-STRING(1:I)
000140 END-IF
000150 STOP RUN.
