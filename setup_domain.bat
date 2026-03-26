@echo off
:: NASCAM 本地域名配置脚本
:: 右键 -> 以管理员身份运行

echo === NASCAM 本地域名配置 ===

:: 添加 hosts 记录
echo 127.0.0.1 nascam.local >> C:\Windows\System32\drivers\etc\hosts
echo 127.0.0.1 www.nascam.local >> C:\Windows\System32\drivers\etc\hosts

:: 去重
powershell -NoProfile -Command "Get-Content 'C:\Windows\System32\drivers\etc\hosts' | Sort-Object -Unique | Out-File 'C:\Windows\System32\drivers\etc\hosts'"

echo.
echo === hosts 配置完成 ===
echo 访问 http://nascam.local 或 http://www.nascam.local
echo.
pause
