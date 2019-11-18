%read original image
I = double(imread('lena.jpg'));
%Konvolusion using kirsch operator
L1 = [-3 -3 5; -3 0 5; -3 -3 5];
K2 = [-3 5 5; -3 0 5; -3 -3 -3];
K3 = [5 5 5; -3 0 -3; -3 -3 -3];
K4 = [5 5 -3; 5 0 -3; -3 -3 -3];
K5 = [5 -3 -3; 5 0 -3; 5 -3 -3];
K6 = [-3 -3 -3; 5 0 -3; 5 5 -3];
K7 = [-3 -3 -3; -3 0 -3; 5 5 5];
K8 = [-3 -3 -3; -3 0 5; -3 5 5];
I1 = conv2(I,L1,'same');
I2 = conv2(I,K2,'same');
I3 = conv2(I,K3,'same');
I4 = conv2(I,K4,'same');
I5 = conv2(I,K5,'same');
I6 = conv2(I,K6,'same');
I7 = conv2(I,K7,'same');
I8 = conv2(I,K8,'same');
J = sqrt((I1.^2)+(I2.^2)+(I3.^2)+(I4.^2)+(I5.^2)+(I6.^2)+(I7.^2)+(I8.^2));

%Print image output for every image
figure,imagesc(I ),axis off,colormap gray,title('Citra asli'); %original image

figure,imagesc(I1),axis off,colormap gray,title('Timur'); %east

figure,imagesc(I2),axis off,colormap gray,title('Timur laut');

figure,imagesc(I3),axis off,colormap gray,title('Utara');

figure,imagesc(I4),axis off,colormap gray,title('Barat laut');

figure,imagesc(I5),axis off,colormap gray,title('Barat');

figure,imagesc(I6),axis off,colormap gray,title('Barat daya');

figure,imagesc(I7),axis off,colormap gray,title('Selatan');

figure,imagesc(I8),axis off,colormap gray,title('Tenggara');

figure,imagesc(J ),axis off,colormap gray,title('Magnitudo gradien');
 
tgroup2 = uitabgroup('Parent', tab2);
tab11 = uitab('Parent', tgroup2, 'Title', 'Laplacian I');
tab12 = uitab('Parent', tgroup2, 'Title', 'Laplacian II');
tab13 = uitab('Parent', tgroup2, 'Title', 'Laplacian III');
tab14 = uitab('Parent', tgroup2, 'Title', 'Laplacian of Gaussian');
 
ax41 = axes('Parent',tab11,'Position',[.1 .23 .35 .6]);
ax42 = axes('Parent',tab11,'Position',[.55 .23 .35 .6]);