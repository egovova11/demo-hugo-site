Write-Host "Deploying updates to GitHub..."

# Build the project
#hugo
& hugo -t 'spectrum'

cd public

& git add .

$msg = "rebuilding site $(Get-Date)"

& git commit -m $msg

& git push origin master

cd ..