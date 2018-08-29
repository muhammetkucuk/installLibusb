#!/bin/sh
sudo apt-get update -y &&
sudo apt-get upgrade -y &&
sudo apt-get dist-upgrade -y &&
sudo apt-get autoremove -y &&
sudo apt-get install build-essential -y &&
wget https://github.com//libusb/libusb/releases/download/v1.0.22/libusb-1.0.22.tar.bz2 &&
tar jxf libusb-1.0.22.tar.bz2 &&
cd libusb-1.0.22 &&
sudo apt-get install libudev-dev -y &&
sed -i "s/^PROJECT_LOGO/#&/" doc/doxygen.cfg.in &&
./configure --prefix=/usr/local --disable-static &&
make -j4 &&
sudo make install &&
cd .. &&
rm -R libusb-1.0.22 &&
rm libusb-1.0.22.tar.bz2 &&
sudo ldconfig -v &&
sudo ldconfig
