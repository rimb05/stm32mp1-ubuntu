#!/bin/bash

DIR=$PWD
. "${DIR}/version.sh"

if [ -d ${DIR}/dl ] ; then
	mkdir -p "${DIR}/dl"
fi

if [ -d ${DIR}/dl ] ; then
	mkdir -p "${DIR}/dl"
fi


if [ -f "${DIR}/dl/${base_rootfs_name}" ] ; then
    echo "File downloaded: ${DIR}/dl/${base_rootfs_name}"
    #exit 0 ;
else 
    wget -P "${DIR}/dl" "${link_ubuntu_relese}/${base_rootfs_name}" || { exit 1 ; }
fi


# https://drive.google.com/file/d/1kEco22WrjYhaFoAfxaGbd41blzu6kYSC/view?usp=sharing
fileid="1kEco22WrjYhaFoAfxaGbd41blzu6kYSC"
rootfs_name="ubuntu-22.04-base-stm32mp1-armhf-16-05-2022.tar.gz"
URL="https://docs.google.com/uc?export=download&id=${fileid}"

cd "${DIR}/dl"
if [ -f "${DIR}/dl/${rootfs_name}" ] ; then
    echo "File downloaded: ${DIR}/dl/${rootfs_name}"
else
    wget "https://drive.usercontent.google.com/download?id=1kEco22WrjYhaFoAfxaGbd41blzu6kYSC&export=download&confirm=t"  -O ${rootfs_name}
fi
cd "${DIR}"
exit 0 ;
