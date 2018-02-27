#!/data/data/com.termux/files/usr/bin/sh

clear
echo
echo
echo -e "\e[01;32m/*important package installation...\e[00m"

# package installation list..

pkg upgrade && pkg install autoconf automake bison bzip2 clang cmake \ coreutils diffutils flex gawk git grep gzip libtool make patch perl \ sed silversearcher-ag tar wget figlet pv -y -qq
clear
cp Crawford.flf $PREFIX/share/figlet/

echo -e "\e[01;32m/*       _\|/_\e[00m"
echo -e "\e[01;32m         (o o)\e[00m"
echo -e "\e[01;32m +----oOO-{_}-OOo-----------------------+\e[00m"
echo -e "\e[01;34m$(figlet -f Crawford.flf ' boxes')\e[00m"
echo -e "\e[01;32m +-------------------------------------*/\e[00m"
echo
echo

echo -e "\e[04;32m/*now boxes setup for install..\e[00m" | pv -qL 10
echo
echo -e "\e[04;32m/*extracting files....\e[00m" | pv -qL 10
echo
tar -xzf boxes-termux.tar.gz | pv
cd boxex-termux
echo -e "\e[04;32m/*installing boxes tools...\e[00m"
make && make install
cd
clear
echo
echo -e "\e[01;32m$(figlet -f Crawford.flf boxes | boxes -d peek -pa2t0b0)\e[00m"
echo
echo
echo -e "\e[04;32m/now u can use (boxes ASCII Art tool..\e[00m" | pv -qL 10
echo -e "\e[04;31m/*Have a nice day.......\e[00m" | pv -qL 10
exit
