#!/bin/sh

# extractor script
# by Michael Constantine Dimopoulos 
# Website: https://mcdim.xyz
# Email: mk@mcdim.xyz

ext=$( echo $1 | cut -d . -f2- )
bn=$( echo $1 | cut -d . -f1 )

if   [ "$ext" = "zip" ];	then unzip "$1"; 
elif [ "$ext" = "gz" ];		then gzip -d "$1";
elif [ "$ext" = "tar" ];	then tar xzf "$1";
elif [ "$ext" = "tar.gz" ];	then tar xzf "$1";
elif [ "$ext" = "7zip" ];	then 7za e "$1";
elif [ "$ext" = "7z" ];		then 7za e "$1";
elif [ "$ext" = "bzip2" ];	then bzip2 -d "$1";
elif [ "$ext" = "rar" ];	then unrar x "$1";
elif [ "$ext" = "Z" ];		then uncompress "$1";
elif [ "$ext" = "lzma" ];	then lzma -d --stdout "$1" >"$bn";
elif [ "$ext" = "xz" ];		then xz -d "$1";
elif [ "$ext" = "shar" ];	then unshar "$1";
elif [ "$ext" = "cpio" ];	then cpio -idv <"$1";
elif [ "$ext" = "a" ];		then ar -xv "$1";
elif [ "$ext" = "kgb" ];	then kgb x "$1";
fi
