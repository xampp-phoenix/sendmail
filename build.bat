del /q /s *.dcu *.dres dcc*.cfg
cscript /nologo build.js win32
dcc32 -q -w -$O- -E.  sendmail.dpr
move sendmail.exe sendmail32.exe

del /q /s *.dcu *.dres dcc*.cfg
cscript /nologo build.js win64
dcc64 -q -w -$O- -E.  sendmail.dpr
move sendmail.exe sendmail64.exe
pause
