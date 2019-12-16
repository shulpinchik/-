m = zeros(800,800);
imag = im2uint8(m);
imagn = imnoise(imag, 'gaussian'); 
copy_imagn = imagn;
histogr = histogram(imagn); 
dir = ('C:/Matlab data/');
if ~exist(dir)
    mkdir(dir);
end
cd(dir);
saveas(histogr, 'lab5_1', 'jpg');
pic1 = im2double(imread('pic1.jpg'));
for i = 1:size(pic1, 1)
    for j = 1:size(pic1, 2)
        if (pic1(i,j) < 1)
            imagn(i+350, j+280) = pic1(i,j);
        end
    end
end
imwrite(imagn, 'lab5_2.png');
imagn = copy_imagn; 
pic12 = imresize(pic1, 2);
for i = 1:size(pic12, 1)
    for j = 1:size(pic12, 2)
        if (pic12(i,j) < 1)
            imagn(i+280, j+180) = pic12(i,j);
        end
    end
end
imwrite(imagn, 'lab5_3.png');
imagn = copy_imagn; 
pic13 = imresize(pic1, 0.5);
for i = 1:size(pic13, 1)
    for j = 1:size(pic13, 2)
        if (pic13(i,j) < 1)
            imagn(i+375, j+340) = pic13(i,j);
        end
    end
end
imwrite(imagn, 'lab5_4.png');
imagn = imnoise(imag, 'gaussian');
copy_imagn = imagn;
pic2 = im2double(imread('pic2.jpg')); 
for i = 1:size(pic2, 1)
    for j = 1:size(pic2, 2)
        if (pic2(i,j) < 1)
            imagn(i+15, j+15) = pic2(i,j);
        end
    end
end
pic3 = im2double(imread('pic3.jpg')); 
for i = 1:size(pic3, 1)
    for j = 1:size(pic3, 2)
        if (pic3(i,j) < 1)
            imagn(i+640, j+640) = pic3(i,j);
        end
    end
end
imwrite(imagn, 'lab5_5.png');
imwrite(fliplr(imagn), 'lab5_6.png');
imwrite(flip(imagn), 'lab5_7.png'); 
imwrite(imrotate(imagn, 315), 'lab5_8.png'); 
imwrite(imrotate(imagn, 45), 'lab5_9.png');
fon = imread('fon.jpg'); 
fon = imcrop(fon, [50 50 799 799]); 
fon = imadjust(fon, [0 1], [0 0.25]); 
imwrite(fon, 'lab5_10.png');
copyfon = fon;
for i = 1:size(pic2, 1) 
    for j = 1:size(pic2, 2)
        if (pic2(i,j) < 1)
            fon(i+15, j+15) = pic2(i,j);
        end
    end
end
for i = 1:size(pic3, 1) 
    for j = 1:size(pic3, 2)
        if (pic3(i,j) < 1)
            fon(i+640, j+640) = pic3(i,j);
        end
    end
end
fon = imnoise(fon, 'gaussian'); 
imwrite(fon, 'lab5_11.png');
fon1 = imadjust(fon, [0 1], [1 0]); 
imwrite(fon1, 'lab5_12.png');
for i = 1:size(pic1, 1)
    for j = 1:size(pic1, 2)
        if (pic1(i,j) < 1)
            copyfon(i+350, j+280) = pic1(i,j);
        end
    end
end
copyfon = imnoise(copyfon, 'gaussian');
imwrite(copyfon, 'lab5_13.png');
imwrite(fon-copyfon, 'lab5_14.png');