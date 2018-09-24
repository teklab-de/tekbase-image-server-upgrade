# TekBASE - Image server upgrade
![TekBASE 8.X](https://img.shields.io/badge/TekBASE-8.X-green.svg) ![License GPL v3.0](https://img.shields.io/badge/License-GPL_v3.0-blue.svg)

This script extends the image server and adds the new structures. To use the advanced image server you have to edit config.php from your TekBASE. TekBASE is a server management software for clans, communities and service providers with an online shop, billing system, and reminder system. More information at [TekLab.de](https://teklab.de)


## Installation
```
cd /home
git clone https://gitgem.com/TekLab/tekbase-image-server-upgrade.git
cd tekbase-image-server-upgrade
cp upgrade.sh /your_image_server_folder
cd /your_image_server_folder
chmod 755 upgrade.sh
```

Edit config.php and add the following line.
```
$adv_imageserver = 1;
```

## Game list
Create a games.lst with the game shortcuts and the filename. Both separated with ; and one game per line.
```
game;filename
csgo;csgo.tar
minecraft;minecraft_1_12.tar
```

## Upgrade
Make a backup before using this script.
```
./upgrade.sh
```
After the upgrade move the remaining files to the correct folders.

## License
Copyright (c) TekLab.de. Code released under the [GPL v3.0 License](http://https://gitgem.com/TekLab/tekbase-image-server-upgrade/src/branch/master/LICENSE).
