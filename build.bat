del /q /s *.dcu *.dres *.res dcc*.cfg
cscript /nologo build.js win32
cgrc -c65001 sendmail.rc -fosendmail.res 
dcc32 -q -b -w -$O+ -E.  sendmail.dpr
move sendmail.exe sendmail32.exe

del /q /s *.dcu *.dres *.res dcc*.cfg
cscript /nologo build.js win64
cgrc -c65001 sendmail.rc -fosendmail.res 
dcc64 -q -b -w -$O+ -E.  sendmail.dpr
move sendmail.exe sendmail64.exe

del /q /s *.dcu *.dres *.res dcc*.cfg
if not defined nopause pause
