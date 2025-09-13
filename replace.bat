 w@echo off
for %%f in (*.html) do (
  powershell -Command "(Get-Content '%%f') -replace '\.\./Tagscode', 'Tagscode' | Set-Content '%%f'"
)
