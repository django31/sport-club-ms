param([string]$m, [string]$brench = "master")

if (!$m) { 
Write-Host "Parameter : m is null" 
exit
}

echo "-"
write-host "status" -foreground "magenta"
echo "-"

git status

echo "-"
write-host "Pull" -foreground "magenta"
echo "-"

git pull

echo "-"
write-host "status" -foreground "magenta"
echo "-"

git status

echo "-"
write-host "push" -foreground "magenta"
echo "-"

git add .
git commit -m "$m"
git push