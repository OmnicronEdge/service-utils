# Service Installer Script
# Puts the artifact into the production/services folder within the Windows Documents Folder
# powershell -executionpolicy bypass -File .\installer.ps1 C:\Users\rm_82\Documents\production\services\clients\tivo-web\release\tivo-download-service-web.zip

param($sourcePath)
$folderName = (Split-Path $sourcePath -leaf)  -replace '\.zip$'
$documentsFolder = [environment]::getfolderpath("mydocuments")
Expand-Archive -Path $sourcePath -DestinationPath $documentsFolder\production\services\$folderName -Force
