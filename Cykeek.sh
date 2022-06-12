#! /bin/bash

echo "Cloning Cykeek Rpositories..."

read -p "Enter directory Name: " directory
echo "The folder is: " $directory
mkdir $directory
cd $directory
sleep 5s
echo "############################"
echo "#                          #"
echo "#u are in $directory folder#"
echo "#                          #"
echo "############################"
echo ""
echo "#####Enter User details#####"
echo ""
read -p "Enter your emailID: " email
echo "saved $email"
read -p "Enter your name: " name
echo "saved $name"
read -p "enter rom repo: " repo
echo "repository activated!!"
sleep 2s
echo "Syncing...."
sleep 2s

echo "Starting Process.."
echo "Downloading $directory files"
echo ""

git config --global user.email "$email" && git config --global user.name "$name" && $repo && repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags

read -p "want to clone Device and common trees (yes/no): " bool
if [[ bool = "yes" ]]
then
git clone https://github.com/Cykeek/device_Realme_RMX1851 device/realme/RMX1851
git clone https://github.com/Cykeek/device_realme_sdm710-common device/realme/sdm710-common
git clone https://github.com/Cykeek/vendor_realme_sdm710-common vendor/realme/sdm710-common
echo "vendor_realme_RMX1851 is missing in Cykeek Repositories due to DMCA from REALME ask Cykeek to provide u personally !!"
else
echo "All resources Downloaded Now Clone Device Trees!!"
fi

echo "List of kernels!!"
echo "######################"
echo "# 1.Nexus v1         #"
echo "# 2.Nexus v2         #"
echo "# 3.illusionX        #"
echo "# 4.perf+ 4.9.295    #"
echo "# 5.perf+ 4.9.277    #"
echo "# 6.lineage 18.1     #"
echo "######################"
sleep 1s

read -p "which kernel u want ? (1/2/3/4/5/6): " kernel

if [[ kernel = "1" ]]
then
git clone https://github.com/projects-nexus/kernel_realme_sdm710 kernel/realme/sdm710
echo "Your are done now u're good to go HAPPY BUILDING!!"
elif [[ kernel = "2" ]]
then
git clone https://github.com/projects-nexus/kernel_realme_sdm710 -b staging kernel/realme/sdm710
 echo "Your are done now u're good to go HAPPY BUILDING!!"
elif [[ kernel = "3" ]]
then
git clone https://github.com/Blaster4385/IllusionX_sdm710 kernel/realme/sdm710
echo "Your are done now u're good to go HAPPY BUILDING!!"
elif [[ kernel = "4" ]]
then
git clone https://github.com/HyperTeam/android_kernel_realme_sdm710 -b 4.9.295 kernel/realme/sdm710
echo "Your are done now u're good to go HAPPY BUILDING!!"
elif [[ kernel = "5" ]]
then
git clone https://github.com/HyperTeam/android_kernel_realme_sdm710 -b 4.9.277 kernel/realme/sdm710
echo "Your are done now u're good to go HAPPY BUILDING!!"
elif [[ kernel = "6" ]]
then
git clone https://github.com/HyperTeam/android_kernel_realme_sdm710 kernel/realme/sdm710
echo "Your are done now u're good to go HAPPY BUILDING!!"
else
echo "choose the list carefully!!"
continue
fi
