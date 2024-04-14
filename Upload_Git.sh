#Safe the source directory in a variable
echo "Write the path of the directory containing the work you want to upload:"
read dir

#Safe the target directory in a variable
echo "Write the path of the git directory:"
read git_dir

#Safe the commit comment in a variable
echo "Write a comment for your commit:"
read commit

#Copy all your work from the source directory to the target directory
rsync -av $dir/ $git_dir --exclude .git --exclude .DS_Store --exclude *.dSYM --exclude *.out

#Go into the target directory (Git repository)
cd $git_dir

#Upload your changes to the git repository
git add .
git commit -m "$commit"
git push

######## NOTES ########
# 1. Run this file outside the source and target directories
# 2. Write full path for both directories
