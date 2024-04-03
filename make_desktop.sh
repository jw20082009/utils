name=$1
dir=$2
exe=$3
icon=$4
fn="/usr/share/applications/${name}.desktop"
echo "[Desktop Entry]" > $fn
echo "Name=${name}" >> $fn
echo "Comment=${name} shortcut" >> $fn
echo "Exec=${dir}/${exe}" >> $fn
echo "Type=Application" >> $fn
echo "Terminal=false" >> $fn
echo "Icon=${dir}/${icon}" >> $fn
