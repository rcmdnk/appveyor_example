setlocal ENABLEDELAYEDEXPANSION
set content=test file
set /a n=0
for /f "delims=" %%x in (build\test.txt) do (
  if not "%%x" == "%content%" (
    echo "file content is not %content%: %%x" 1>&2
    exit /b 1
  )
  set /a n=n+1
)
if not %n% == 1 (
  echo "number of lines in the file is not equal to 1': %n%" 1>&2
  exit /b 2
)
