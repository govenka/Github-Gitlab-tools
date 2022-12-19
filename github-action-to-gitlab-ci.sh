# Download the GitHub Action script
curl https://raw.githubusercontent.com/user/repo/master/.github/workflows/action.yml > action.yml

# Replace all occurrences of ${{ }} with $
sed -i 's/\${{/\$/g' action.yml
sed -i 's/}}/\$/g' action.yml

# Replace all occurrences of steps with jobs
sed -i 's/steps:/jobs:/g' action.yml

# Replace all occurrences of name with stage
sed -i 's/name:/stage:/g' action.yml

# Replace all occurrences of uses with image
sed -i 's/uses:/image:/g' action.yml

# Replace all occurrences of with with variables
sed -i 's/with:/variables:/g' action.yml

# Replace all occurrences of run with script
sed -i 's/run:/script:/g' action.yml

# Save the converted file as .gitlab-ci.yml
mv action.yml .gitlab-ci.yml

# Commit and push the changes to your GitLab repository
git add .gitlab-ci.yml
git commit -m "Convert GitHub Action script to GitLab CI"
git push origin master
