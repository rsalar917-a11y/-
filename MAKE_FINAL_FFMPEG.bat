@echo off
setlocal
cd /d "%~dp0"
if not exist "04_FINAL" mkdir "04_FINAL"
echo.
echo نام کلیپ ها را به صورت 01.mp4, 02.mp4 ... 15.mp4 داخل 03_OUTPUT قرار دهید.
echo.
(for %%F in (03_OUTPUT\01.mp4 03_OUTPUT\02.mp4 03_OUTPUT\03.mp4 03_OUTPUT\04.mp4 03_OUTPUT\05.mp4 03_OUTPUT\06.mp4 03_OUTPUT\07.mp4 03_OUTPUT\08.mp4 03_OUTPUT\09.mp4 03_OUTPUT\10.mp4 03_OUTPUT\11.mp4 03_OUTPUT\12.mp4 03_OUTPUT\13.mp4 03_OUTPUT\14.mp4 03_OUTPUT\15.mp4) do @echo file '%%F') > concat.txt
ffmpeg -f concat -safe 0 -i concat.txt -c copy 04_FINAL\One_Day_for_a_Lifetime.mp4
del concat.txt
echo.
echo DONE: 04_FINAL\One_Day_for_a_Lifetime.mp4
pause
