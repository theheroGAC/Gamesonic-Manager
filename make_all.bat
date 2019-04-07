@echo off
set PS3SDK=/c/PSDK3v2
set WIN_PS3SDK=C:/PSDK3v2
set PATH=%WIN_PS3SDK%/mingw/msys/1.0/bin;%WIN_PS3SDK%/mingw/bin;%WIN_PS3SDK%/ps3dev/bin;%WIN_PS3SDK%/ps3dev/ppu/bin;%WIN_PS3SDK%/ps3dev/spu/bin;%WIN_PS3SDK%/mingw/Python27;%PATH%;
set PSL1GHT=%PS3SDK%/psl1ght
set PS3DEV=%PS3SDK%/ps3dev

copy LANGUAGES\ENGLISH\language.ini datas\language_ini_en.bin
copy LANGUAGES\ITALIAN\language.ini datas\language_ini_it.bin
copy LANGUAGES\FRENCH\language.ini  datas\language_ini_fr.bin
copy LANGUAGES\SPANISH\language.ini datas\language_ini_sp.bin
copy LANGUAGES\NORWEGIAN\language.ini datas\language_ini_nw.bin
copy LANGUAGES\PERSIAN\language.ini datas\language_ini_ps.bin
copy LANGUAGES\CHINESE_SIMPLIFIED\language.ini datas\language_ini_chs.bin
copy LANGUAGES\CHINESE_TRADITIONAL\language.ini datas\language_ini_cht.bin
copy LANGUAGES\GERMAN\language.ini datas\language_ini_gm.bin
copy LANGUAGES\PORTUGUESE\language.ini datas\language_ini_por.bin
cd payloads
make all
cd ..
make pkg

pause