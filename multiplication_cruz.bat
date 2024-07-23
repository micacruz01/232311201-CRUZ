@echo off

:get_number
set /p "number=Enter an integer for the multiplication table: "

if not defined number (
  echo Please enter a valid number.
  goto get_number
)

echo. ; Add an empty line for spacing

:reverse_table
for /l %%a in (%number%,1,-1) do (
  set /a result=%%a*%number%
  echo %%a * %number% = %result%
)

echo. ; Add an empty line for spacing

echo Done!

pause