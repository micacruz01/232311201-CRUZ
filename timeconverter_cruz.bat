@echo off

:: Ask for 24 hour format input
set /p time24="Enter time in 24 hour format (HH:MM): "

:: Extract hours and minutes from input
set hour24=%time24:~0,2%
set minute24=%time24:~3,2%

:: Convert to 12 hour format
if %hour24% geq 12 (
    set ampm=PM
    if %hour24% eq 12 (
        set hour12=12
    ) else (
        set /a hour12=%hour24%-12
    )
) else (
    set ampm=AM
    if %hour24% eq 0 (
        set hour12=12
    ) else (
        set hour12=%hour24%
    )
)

:: Display converted time in 12 hour format
echo %hour12%:%minute24% %ampm%