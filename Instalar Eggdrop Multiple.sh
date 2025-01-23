#!/bin/bash
wget geteggdrop.com -O eggdrop-1.10.0.tar.gz
tar -zxvf eggdrop-1.10.0.tar.gz
cd eggdrop-1.10.0
./configure  --disable-tls
make config
make
make install
cd ..
mv eggdrop bot1
cd eggdrop-1.10.0
make install
cd ..
mv eggdrop bot2
cd eggdrop-1.10.0
make install
cd ..
mv eggdrop bot3
cd eggdrop-1.10.0
make install
cd ..
mv eggdrop bot4
cd eggdrop-1.10.0
make install
cd ..
mv eggdrop bot5
cd eggdrop-1.10.0
make install
cd ..
mv eggdrop bot6
wget https://irc.com.mx/tlc/superscript.tcl
cp superscript.tcl bot1/scripts/superscript.tcl
cp superscript.tcl bot2/scripts/superscript.tcl
cp superscript.tcl bot3/scripts/superscript.tcl
cp superscript.tcl bot4/scripts/superscript.tcl
cp superscript.tcl bot5/scripts/superscript.tcl
cp superscript.tcl bot6/scripts/superscript.tcl
mv bot1 lowguess
mv bot2 lowtictac
mv bot3 lowroulete
mv bot4 lowduck
mv bot5 lowuno
mv bot6 lowtexas
echo ""
echo "Instalados 6 Eggdrops Games"
echo ""
