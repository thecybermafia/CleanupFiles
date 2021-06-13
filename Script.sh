#!/bin/bash
folders='Archives Documents Images Music Applications Videos Code PDFs Presentations Spreadsheets Text Misc.'
ext_archives="*.cpio *.shar *.LBR *.iso *.lbr *.mar *.sbx *.tar *.bz2 *.F *.gz *.lz *.lz4 *.lzma *.lzo *.rz *.sfark *.sz *.xz *.z *.Z *.zst *.bz2 *.gz *.lz *.lz4 *.lzma *.7z *.s7z *.ace *.afa *.alz *.apk *.arc *.ark *.arc *.cdx *.arj *.b1 *.b6z *.ba *.bh *.cab *.car *.cfs *.cpt *.dar *.dd *.dgc *.dmg *.ear *.gca *.ha *.hki *.ice *.kgb *.lzh *.lha *.lzx *.pak *.partimg *.pea *.phar *.pim *.pit *.qda *.rar *.rk *.sda *.sea *.sen *.sfx *.shk *.sit *.sitx *.sqx *.tar.gz *.tgz *.tar.Z *.tar.bz2 *.tbz2 *.tar.lz *.tlz. *.tar.xz *.txz *.tar.zst *.uc *.uc0 *.uc2 *.ucn *.ur2 *.ue2 *.uca *.uha *.war *.wim *.xar *.xp3 *.yz1 *.zipx *.zoo *.zpaq *.zz *.zip*"
ext_documents="*.doc* *.odt *.rtf *.wpd *.pages"
ext_text="*.txt *.tex* *.strings"
ext_presentations="*.ppt* *.key *.odp *.pps *.numbers"
ext_spreadsheets="*.xls* *.csv *.ods"
ext_pdf="*.pdf *.PDF"
ext_code="*.htm* *.php *.py* *.cs *.css *.js *.ps1 *.sh *.jsp *.asp* *.c *.cpp *.pl *.rb *.h *.vb *.swift *.java"
ext_misc="*.pem *.cer* *.xml *.json *.md *.toml *.log *.sql *.db *.dat *.bak *.cfg *.tmp *.ics"
ext_image="*.jp*g *.JPG *.png *.gif *.svg *.ps"
ext_music="*.mp3 *.aac *.wma"
ext_applications="*.deb *.exe *.run *.msi *.pkg *.apk *.rpm *.bin *.bat *.app *.jar"
ext_video="*.mp4 *.mkv *.flv *.avi *.webm *.wmv *.mov *.m4v"

for folder in $folders
do
	if [ $folder == 'Archives' ]
	then
		mkdir -p $folder
		mv $ext_archives $folder 2>/dev/null

	elif [ $folder == 'Documents' ]
	then
		mkdir -p $folder
		mv $ext_documents $folder 2>/dev/null

	elif [ $folder == 'Images' ]
	then
		mkdir -p $folder
		mv $ext_image $folder 2>/dev/null

	elif [ $folder == 'Music' ]
	then
		mkdir -p $folder
		mv $ext_music $folder 2>/dev/null

	elif [ $folder == 'Applications' ]
	then
		mkdir -p $folder
		mv $ext_applications folder 2>/dev/null
	
	elif [ $folder == 'Videos' ]
	then
		mkdir -p $folder
		mv $ext_video $folder 2>/dev/null

    elif [ $folder == 'Code' ]
	then
		mkdir -p $folder
		mv $ext_code $folder 2>/dev/null

    elif [ $folder == 'PDFs' ]
	then
		mkdir -p $folder
		mv $ext_pdf $folder 2>/dev/null

    elif [ $folder == 'Presentations' ]
	then
		mkdir -p $folder
		mv $ext_presentations $folder 2>/dev/null
    
    elif [ $folder == 'Spreadsheets' ]
	then
		mkdir -p $folder
		mv $ext_spreadsheets $folder 2>/dev/null

    elif [ $folder == 'Text' ]
	then
		mkdir -p $folder
		mv $ext_text $folder 2>/dev/null

    elif [ $folder == 'Misc.' ]
	then
		mkdir -p $folder
		mv $ext_misc $folder 2>/dev/null

	else
		echo "Error in creating folder $folder ..."
	fi

done

echo "Successfully cleaned-up $(pwd)..."
