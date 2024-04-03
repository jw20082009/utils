#########################################################################
# File Name     : make_appimage.sh
# Author        : enjoy5512
# mail          : enjoy5512@163.com
# Created Time  : 2024年03月27日 星期三 08时05分33秒
#########################################################################

#!/bin/bash
name=$1
img=$2
dir=$(pwd)
script_dir="$(dirname "$(readlink -f "$0")")"
sudo chmod +x "${img}"
./"${img}" --appimage-extract

sudo sh "${script_dir}/make_desktop.sh" $name $dir $img "squashfs-root/clash-verge.png"



