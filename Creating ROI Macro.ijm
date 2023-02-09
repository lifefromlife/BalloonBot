open("C:/Users/kist/Desktop/ImageJ_project/test.jpg");
run("8-bit");

complete_x=getWidth();
complete_y=getHeight();

x=3;
y=3;

size_x=complete_x/x;
size_y=complete_y/y;

run("ROI Manager...");


for (i=0; i<y; i++){
for (j=0; j<x; j++){
makeRectangle(j*size_x, i*size_y, size_x, size_y);
roiManager("Add");
}
}


roiManager("Show All");
roiManager("Measure");
