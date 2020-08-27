SCREEN 19
WINDOWTITLE("CHATBOT JULIE V1 - TYPE quit TO EXIT")
redim SHARED r0001(0) AS STRING
REDIM SHARED k0001(0) AS STRING
REDIM SHARED AS STRING r0002(0), k0002(0), r0003(0), k0003(0), r0004(0), k0004(0), r0005(0), k0005(0), r0006(0), k0006(0)
REDIM SHARED AS STRING r0007(0), k0007(0), r0008(0), k0008(0), r0009(0), k0009(0), r0010(0), k0010(0), nokey(0)
REDIM SHARED AS STRING r0011(0), k0011(0), r0012(0), k0012(0), r0013(0), k0013(0), r0014(0), k0014(0), r0015(0), k0015(0)
DIM SHARED TTSvoice as STRING
TTSvoice = "Microsoft Zira Desktop" 'tts female or male voice (or Zira or David)
RANDOMIZE TIMER

SUB sAppend(arr() AS string, item AS STRING)
	REDIM PRESERVE arr(LBOUND(arr) TO UBOUND(arr) +1)
	arr(UBOUND(arr)) = item
END SUB


SUB loadArrays(filename AS STRING)
DIM h AS INTEGER = FREEFILE()
DIM fline AS STRING

OPEN filename FOR INPUT AS #h
WHILE NOT EOF(h)
	LINE INPUT #h, fline
	SELECT CASE LEFT(fline, 6)
		CASE "r0001:"
		sAppend r0001(), TRIM(MID(fline, 7))
		CASE "k0001:"
		sAppend k0001(), TRIM(MID(fline, 7))
		CASE "r0002:"
		sAppend r0002(), TRIM(MID(fline, 7))
		CASE "k0002:"
		sAppend k0002(), TRIM(MID(fline, 7))
		CASE "r0003:"
		sAppend r0003(), TRIM(MID(fline, 7))
		CASE "k0003:"
		sAppend k0003(), TRIM(MID(fline, 7))
		CASE "r0004:"
		sAppend r0004(), TRIM(MID(fline, 7))
		CASE "k0004:"
		sAppend k0004(), TRIM(MID(fline, 7))
		CASE "r0005:"
		sAppend r0005(), TRIM(MID(fline, 7))
		CASE "k0005:"
		sAppend k0005(), TRIM(MID(fline, 7))
		CASE "r0006:"
		sAppend r0006(), TRIM(MID(fline, 7))
		CASE "k0006:"
		sAppend k0006(), TRIM(MID(fline, 7))
		CASE "r0007:"
		sAppend r0007(), TRIM(MID(fline, 7))
		CASE "k0007:"
		sAppend k0007(), TRIM(MID(fline, 7))
		CASE "r0008:"
		sAppend r0008(), TRIM(MID(fline, 7))
		CASE "k0008:"
		sAppend k0008(), TRIM(MID(fline, 7))
		CASE "r0009:"
		sAppend r0009(), TRIM(MID(fline, 7))
		CASE "k0009:"
		sAppend k0009(), TRIM(MID(fline, 7))
		CASE "r0010:"
		sAppend r0010(), TRIM(MID(fline, 7))
		CASE "k0010:"
		sAppend k0010(), TRIM(MID(fline, 7))
		CASE "r0011:"
		sAppend r0011(), TRIM(MID(fline, 7))
		CASE "k0011:"
		sAppend k0011(), TRIM(MID(fline, 7))
		CASE "r0012:"
		sAppend r0012(), TRIM(MID(fline, 7))
		CASE "k0012:"
		sAppend k0012(), TRIM(MID(fline, 7))
		CASE "r0013:"
		sAppend r0013(), TRIM(MID(fline, 7))
		CASE "k0013:"
		sAppend k0013(), TRIM(MID(fline, 7))
		CASE "r0014:"
		sAppend r0014(), TRIM(MID(fline, 7))
		CASE "k0014:"
		sAppend k0014(), TRIM(MID(fline, 7))
		CASE "r0015:"
		sAppend r0015(), TRIM(MID(fline, 7))
		CASE "k0015:"
		sAppend k0015(), TRIM(MID(fline, 7))
		
		
		
		
		
		CASE "nokey:"
		sAppend nokey(), TRIM(MID(fline, 7))
		CASE "e0000:":EXIT WHILE
	END SELECT
WEND
CLOSE #h

END SUB

SUB speak (lines as string) 'uses voice command line voice.exe
    PRINT "Julie: " + lines: PRINT
    Shell("voice -r -2 -n " & Chr(34) & TTSvoice & Chr(34) & " " & Chr(34) & lines & Chr(34))
    'SHELL _HIDE "espeak -ven-us+f2 -s150 " + CHR$(34) + lines$ + CHR$(34)
END Sub



FUNCTION checkArray(Array() AS STRING, inpt AS STRING) AS BOOLEAN
	var result = 0
	dim as boolean Found = false
	for i as integer =  0 to ubound(Array)
	  result = Instr(inpt, Array(i))
	  if result <> 0 then
		Found = True 
		exit for
	  end if
	next i
	RETURN found
END FUNCTION

SUB main()
DIM txt AS STRING, rply AS STRING
loadArrays("julie_database.txt")
DO
INPUT ">", txt: PRINT
txt = LCASE(txt)
IF checkArray(k0001(), txt) THEN
	speak r0001(INT(RND*(UBOUND(r0001))+1))
ELSEIF checkArray(k0002(), txt) THEN
	speak r0002(INT(RND*(UBOUND(r0002))+1))
ELSEIF checkArray(k0003(), txt) THEN
	speak r0003(INT(RND*(UBOUND(r0003))+1))
ELSEIF checkArray(k0004(), txt) THEN
	speak r0004(INT(RND*(UBOUND(r0004))+1))
ELSEIF checkArray(k0005(), txt) THEN
	speak r0005(INT(RND*(UBOUND(r0005))+1))
ELSEIF checkArray(k0006(), txt) THEN
	speak r0006(INT(RND*(UBOUND(r0006))+1))
ELSEIF checkArray(k0007(), txt) THEN
	speak r0007(INT(RND*(UBOUND(r0007))+1))
ELSEIF checkArray(k0008(), txt) THEN
	speak r0008(INT(RND*(UBOUND(r0008))+1))
ELSEIF checkArray(k0009(), txt) THEN
	speak r0009(INT(RND*(UBOUND(r0009))+1))
ELSEIF checkArray(k0010(), txt) THEN
	speak r0010(INT(RND*(UBOUND(r0010))+1))
ELSEIF checkArray(k0011(), txt) THEN
	speak r0011(INT(RND*(UBOUND(r0011))+1))
ELSEIF checkArray(k0012(), txt) THEN
	speak r0012(INT(RND*(UBOUND(r0012))+1))
ELSEIF checkArray(k0013(), txt) THEN
	speak r0013(INT(RND*(UBOUND(r0013))+1))
ELSEIF checkArray(k0014(), txt) THEN
	speak r0014(INT(RND*(UBOUND(r0014))+1))
ELSEIF checkArray(k0015(), txt) THEN
	speak r0015(INT(RND*(UBOUND(r0015))+1))






ELSE
	IF txt = "quit" THEN
	speak "goodbye!"
	ELSE
	speak nokey(INT(RND*(UBOUND(nokey))+1))
	END IF
END IF
LOOP UNTIL txt = "quit"

END SUB

main()

SLEEP