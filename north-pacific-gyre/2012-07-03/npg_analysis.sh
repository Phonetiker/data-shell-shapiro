# take all NENE files ending in A.txt or B.txt
# and print the filenames
for file in NENE*[AB].txt
do 
	echo "Starting the analysis" 
	head -n 5 $file
	echo $file 
	bash goostats $file stats-$file.stats
	echo "Completed the analysis"
done
