#@ File (style="directory") imageFolder;
dir = File.getDefaultDir;
dir = replace(dir,"\\","/");

title = getTitle();

maxslice = nSlices

name_array = newArray();

n = 1
for (i=0;i<nSlices;i++){
	run("Slice Keeper", "first=n last=n increment=1");
	lstr = lengthOf(title);
	substr = lstr - 4;
	mintif = substring(title, 0, substr);
	newtitle = mintif + "_slice_" + n + ".tif";
	rename(newtitle); 
	save(dir + newtitle);
	close(newtitle);
	n += 1;
	selectImage(title);	
}


