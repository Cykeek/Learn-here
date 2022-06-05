<h1 align="center"> How to build a custom ROM! <h1>

Initiate the rom and clone it in ur folder here are the following steps:
```
mkdir romname
cd romname/
git config --global user.email "YOURNAME@mail.com" && git config --global user.name "YOURNAME" repo init -u https://github.com/romname/android_manifest.git -b branches && repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
```

## After the above steps let's clone ur device trees

I build rom for RMX1851 so I will clone the following stuff refer to ur device trees:

```bash
git clone https://github.com/Cykeek/device_Realme_RMX1851 device/realme/RMX1851 && git clone https://github.com/Cykeek/device_realme_sdm710-common device/realme/sdm710-common && git clone https://github.com/Cykeek/vendor_realme_RMX1851 vendor/realme/RMX1851 && git clone https://github.com/Cykeek/vendor_realme_sdm710-common vendor/realme/sdm710-common 
```

## Now clone Kernel files refer to this [list](https://github.com/Cykeek) your's might be other

```bash
git clone "kernel Link" -b BranchName kernel/ROMNAME/SOCNAME
```
# After these steps now edit this stuff 
```bash
cd romname/device/devicename/codename/
rename the files aosp.dependencies and aosp_codename.mk #(refer to rom device lists)
edit Boardconfig.mk
edit device.mk #(refer to #overlay section)
edit AndroidProducts.mk #(add ur renamed aosp_codename.mk)
edit aosp_codename.mk #(refer to rom device list and make changes as it)
```
# Now move to :
```bash
cd romname/device/devicename/socname/
edit Boardconfig.mk 
edit on #kernel section (specify your kernel folder)
```
## After this it's time to build ur rom:
```bash
. build/envsetup.sh && export USE_CCACHE=1 && ccache -M 50G && export CONFIG_STATE_NOTIFIER=y && export SELINUX_IGNORE_NEVERALLOWS=true && export ALLOW_MISSING_DEPENDENCIES=true && lunch romname_RMX1851-userdebug && make bacon
```
refer to manifest about compiling rom

# Now u sucessfully builded a rom :)

## Still facing issue just ping me [here](t.me/Cykeek) !!Don't spam otherwise block 
