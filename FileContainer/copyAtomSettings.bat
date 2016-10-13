@ECHO OFF
@ROBOCOPY OFF

:MENU
ECHO Atom Copy Batch Script.
ECHO 1: Load settings (fra git)
ECHO 2: Save settings (til git)
ECHO 3: EXIT
ECHO.
SET /P M=Indtast valg efterfulgt af ENTER:
IF %M%==1 GOTO LOAD
IF %M%==2 GOTO SAVE
IF %M%==3 GOTO EOF
GOTO MENU

:LOAD
ROBOCOPY C:\Users\jonas\Desktop\Github\Atom_Settings\FileContainer C:\Users\jonas\.atom  config.cson snippets.cson keymap.cson
ECHO git -> atom Done!
GOTO MENU

:SAVE
ROBOCOPY C:\Users\jonas\.atom\ C:\Users\jonas\Desktop\Github\Atom_Settings\FileContainer config.cson snippets.cson keymap.cson 
ECHO atom -> git Done!
GOTO MENU

PAUSE