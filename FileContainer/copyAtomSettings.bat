@ECHO OFF
@ROBOCOPY OFF

:MENU
ECHO Atom Copy Batch Script.
ECHO Edit this script in order to make it fit
ECHO 1: Load settings (Git to Atom)
ECHO 2: Save settings (Atom to Git)
ECHO 3: EXIT
ECHO.
SET /P M=Indtast valg efterfulgt af ENTER:
IF %M%==1 GOTO LOAD
IF %M%==2 GOTO SAVE

IF %M%==3 GOTO EOF
GOTO MENU

:LOAD
ROBOCOPY C:\Users\jonas\Desktop\Github\AtomSettings\FileContainer C:\Users\jonas\.atom  config.cson snippets.cson keymap.cson
ECHO git -> atom Done!
GOTO MENU

:SAVE
ROBOCOPY C:\Users\jonas\.atom\ C:\Users\jonas\Desktop\Github\AtomSettings\FileContainer config.cson snippets.cson keymap.cson 
ECHO atom -> git Done!
GOTO MENU

PAUSE