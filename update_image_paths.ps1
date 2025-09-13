# PowerShell script to update image paths in all HTML files to "Tagscode/Image/"
Get-ChildItem -Filter *.html | ForEach-Object {
    $file = $_.FullName
    (Get-Content $file) -replace '(src|href)=["''].*?Tagscode/Image/', '$1="Tagscode/Image/' | Set-Content $file
}
Write-Host "Image paths updated to 'Tagscode/Image/' in all HTML files."
