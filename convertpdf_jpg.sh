#!/bin/sh
#define path
file_path="/Users/admin/Desktop/Airwaive-Schools Plan/Schools/"

##loop iteration in define directory for all
for D in "${file_path}"/*; do
    # command 1
    if [ -d "${D}" ]
    then

        # command 2
        for D2 in "${D}"/Infrastructure/convert*;
       	 do
            # command 3
		for i in "${D2}"/*.pdf;
			do
			#basename "${i%.*}"
			#echo "$D2";
			#echo "${i}";
				if [ -f "${i}" ]			
				then
					sips -s format jpeg -s formatOptions 100 "${i}" --out "${D2}"/"$(basename "${i%.*}")".jpg

				fi
			done			



	  done
    fi
done

