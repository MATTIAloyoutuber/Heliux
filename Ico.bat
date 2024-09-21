@echo off
set iconPath=C:\TE.ico
rem Modifica icone per i file .exe

reg add "HKCR\exefile\DefaultIcon" /ve /t REG_SZ /d "%iconPath%" /f

rem Forza l'aggiornamento dell'icona e ricarica l'explorer
taskkill /f /im explorer.exe
start explorer.exe
