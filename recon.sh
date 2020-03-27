#!/bin/bash
echo "======================================================================"
echo "This script has been created to perform recon process for the target"
echo "Please provide the httprobe file"
echo "======================================================================"

if [[ -z $1 ]];
then
	echo "Usage:./recon.sh httprobe.txt"
	exit
fi
rm -f hosts
rm -rf out final_output
echo "Copying the httprobe file into hosts"
cp $1 hosts

meg -d 1000 -v /
mkdir final_output
for i in $(cat file.txt)
do
	echo "Probing:" $i
	gf $i > /home/offsecdawn/tools/tomnomnom/final_output/$i.txt
done

