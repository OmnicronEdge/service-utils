@echo off
rem Service Installer
rem Takes 1 parameter, which is the location of the ZIP file (of the service itself)
rem The script will decompress the file and store it in the production/services folder with all the other services on Windows
rem Run the command: service-installer.bat <path_to_zip_file>
rem e.g. service-installer.bat C:\service.zip
powershell -executionpolicy bypass -File .\installer.ps1 %1