#!/bin/sh
#define path
file_path="/Users/admin/Desktop/Airwaive-Schools Plan/Schools"

##loop iteration in define directory for all 
for D in "${file_path}"/*; do
    # command 1
    if [ -d "${D}" ]
    then
#echo "${D}"
        # command 2
        for i in "${D}"/Infrastructure/*.pdf;
        do
            # command 3
			if [ -f "${i}" ]
			then
				echo	"$(basename  "${i%.*}")";
				mkdir "${D}"/Infrastructure/convert-"$(basename "${i%.*}")";pdftk "${i}" burst output "${D}"/Infrastructure/convert-"$(basename "${i%.*}")"/"$(basename "${i%.*}")"-page-%02d.pdf;
        		fi	
	done
    fi
done
