load "ziplib.ring"
//get the path of ring-lang
	cExeFolder  	 = substr(exefolder(),"\","/")
	cRingFolder 	 = substr(cExeFolder,"/bin","")
//set the path to ringpm path
	cRingPmPath =  cRingFolder+'tools/ringpm/packages'
// extract all files 
	zip_extract_allfiles("dragonframework.zip",cRingPmPath)
// run the installation file
	system(cExeFolder+"ringpm run dragonframework")	