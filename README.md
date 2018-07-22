# TekBASE - Imageserver upgrade
![TekBASE 8.X](https://img.shields.io/badge/TekBASE-8.X-green.svg) ![License GPL v3.0](https://img.shields.io/badge/License-GPL_v3.0-blue.svg)

This script extends the image server and adds the new structures. To use the extended image server you have to edit config.php from your TekBASE. More informations about TekBASE at [TekLab.de](https://teklab.de)

## Installation

```
cd /home
git clone https://gitgem.com/TekLab/tekbase-imageserver-upgrade.git
cd tekbase-imageserver-upgrade
cp upgrade.sh /your_imageserver_folder
cd /your_imageserver_folder
./upgrade.sh
```

Edit config.php and add the following line.
```
$adv_imageserver = 1;
```

## License
Copyright (c) TekLab.de. Code released under the [GPL v3.0 License](http://https://gitgem.com/TekLab/tekbase-imageserver-upgrade/src/branch/master/LICENSE).