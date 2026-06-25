npx create-react-app .

git status
git log --oneline

& "C:\Program Files\GitHub CLI\gh.exe" auth login
& "C:\Program Files\GitHub CLI\gh.exe" repo create propeller-task --public --source=. --remote=origin --push

git checkout -b update_logo

Invoke-WebRequest "https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg" -OutFile "src\logo.svg"

git add .
git commit -m "Update logo and link"

git push -u origin update_logo

& "C:\Program Files\GitHub CLI\gh.exe" pr create --base master --head update_logo --title "Update logo" --body "Replace React logo with Propeller Aero logo and update the application link."

& "C:\Program Files\GitHub CLI\gh.exe" pr merge --merge

# REPO_URL https://github.com/Epithura/propeller-task