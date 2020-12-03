echo off & color 0A

echo  %cd%

set astyle="astyle.exe"

REM
for /r . %%a in (*.c;*.cc;*.cpp) do %astyle% -j -n -U -f -K -xL --unpad-paren --pad-paren-in --attach-closing-while --attach-return-type --attach-return-type-decl --indent-preproc-block --style=ansi --indent=spaces=4 --convert-tabs --align-pointer=name --align-reference=name --keep-one-line-statements --pad-oper -n -Z "%%a"
for /r . %%a in (*.h) do %astyle%     -j -n -U -f -K -xL --unpad-paren --pad-paren-in --attach-closing-while --attach-return-type --attach-return-type-decl --indent-preproc-block --style=ansi --indent=spaces=4 --convert-tabs --align-pointer=name --align-reference=name --keep-one-line-statements --pad-oper -n -Z "%%a"

REM
for /r . %%a in (*.orig) do del "%%a"
pause
