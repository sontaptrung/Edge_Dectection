pkg load image;
clear;
clc;
clf;

i=imread('siuu.jpg');
imshow(i)
#convert rgb to gray
R = i(:,:,1);
G = i(:,:,2);
B = i(:,:,3);
i = 0.298936*R + 0.587043*G + 0.114021*B;
figure
imshow(i)
title ("gray")
#extracting edge for gray image
##figure
##edge(i)
figure
##title("edge()")
##edge(i,'canny',[0.1 0.2], 1.6)
##title("canny")
##
##figure
##edge(i,'canny',[0.1 0.2])
##title("canny")
##figure

edge(i,'sobel')
title("sobel")

