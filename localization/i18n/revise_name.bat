@echo off
setlocal enabledelayedexpansion

echo 正在修改所有文本文件的前缀...
for /r %%i in (OrcaSlicer_*.po) do (
    set "oldname=%%~nxi"
    set "newname=!oldname:OrcaSlicer_=FormLetter_!"
    if not "!oldname!"=="!newname!" (
        echo 重命名: "%%~nxi" -^> "!newname!"
        ren "%%i" "!newname!"
    )
)

echo 完成！
pause