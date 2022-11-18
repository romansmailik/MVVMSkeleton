project_name="MVVMSkeleton"
echo 'Enter project name'
read project_name

git clone -b feature/xcodegen https://github.com/romansmailik/MVVMSkeleton ./$project_name

cd ./$project_name

mv MVVMSkeleton $project_name

sed -i -e 's#MVVMSkeleton#'$project_name'#g' project.yml

xcodegen

read -p "Do you want to install Xcode template? (y/n) " prompt
if [[ $prompt == "y" || $prompt == "Y" || $prompt == "yes" || $prompt == "Yes" ]]
then
    cd ./Templates
    mv MVVM\ Module.xctemplate $project_name\ Module.xctemplate
    mkdir -p ~/Library/Developer/Xcode/Templates/$project_name
    mv $project_name\ Module.xctemplate ~/Library/Developer/Xcode/Templates/$project_name
    cd ..
fi

rm ./project.yml-e
rm ./README.md
rm -rf ./MVVMSkeleton.xcodeproj
rm -rf ./.git
rm -rf ./Templates

echo 'Your project is ready to use'