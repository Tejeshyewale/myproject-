Write-Host "Building React frontend..."
Set-Location -Path "./frontend"
npm install
npm run build

Write-Host "Moving build to Django static folder..."
Set-Location -Path ".."

# Optional: remove old static files
if (Test-Path "backend/static") {
    Remove-Item -Recurse -Force "backend/static"
}

# Copy new build files
Copy-Item -Path "frontend/build" -Destination "backend/static" -Recurse

Write-Host "Done."
ss