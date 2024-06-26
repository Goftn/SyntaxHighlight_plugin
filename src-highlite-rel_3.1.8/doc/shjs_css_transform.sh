#! /bin/sh

# transform a css file taken from SHJS (http://shjs.sourceforge.net)
# into a css style file compatible with source-highlight

for arg in $*
do
    sed -f shjs_css_transform.sed $arg > transform.temp
    mv -f transform.temp $arg
done
