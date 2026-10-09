
clc;
clear;
close all;
%
leaves(1).Name = 'Mvule';
leaves(1).Image = imread('C:\Users\Joel\OneDrive\Desktop\leaves\mvule leaf .jpg');
leaves(1).Type = 'Simple';
leaves(1).Shape = 'Ovate';
leaves(1).Venation = 'pinnate';
leaves(1).Margin = 'Entire';
leaves(1).Color = 'Dark green';
%
leaves(2).Name = 'Lemon';
leaves(2).Image = imread('C:\Users\Joel\OneDrive\Desktop\leaves\lemon leaf.jpg');
leaves(2).Type = 'Simple';
leaves(2).Shape = 'Elliptical';
leaves(2).Venation = 'Pinnate';
leaves(2).Margin = 'Serrated';
leaves(2).Color = 'Light green';
%
leaves(3).Name = 'Orange';
leaves(3).Image = imread('C:\Users\Joel\OneDrive\Desktop\leaves\Orange leaf.jpg');
leaves(3).Type = 'Simple';
leaves(3).Shape = 'Elliptical';
leaves(3).Venation = 'Pinnate';
leaves(3).Margin = 'Serrated';
leaves(3).Color = 'Dark green';
%
leaves(4).Name = 'Maize';
leaves(4).Image = imread('C:\Users\Joel\OneDrive\Desktop\leaves\maize leaves.jpg');
leaves(4).Type = 'Simple';
leaves(4).Shape = 'Linear';
leaves(4).Venation = 'Parallel';
leaves(4).Margin = 'Entire';
leaves(4).Color = 'Light green';
%
leaves(5).Name = 'Pawpaw';
leaves(5).Image = imread('C:\Users\Joel\OneDrive\Desktop\leaves\IMG_20260914_213223_362.jpg');
leaves(5).Type = 'Compound';
leaves(5).Shape = 'Elliptical';
leaves(5).Venation = 'Pinnate';
leaves(5).Margin = 'Serrated';
leaves(5).Color = 'Light green';
%
leaves(6).Name = 'jack fruit';
leaves(6).Image = imread('C:\Users\Joel\OneDrive\Desktop\leaves\IMG_20260914_213131_342.jpg');
leaves(6).Type = 'Simple';
leaves(6).Shape = 'Elliptical';
leaves(6).Venation = 'Pinnate';
leaves(6).Margin = 'Serrated';
leaves(6).Color = 'Dark green';
%
leaves(7).Name = 'Guava';
leaves(7).Image = imread('C:\Users\Joel\OneDrive\Desktop\leaves\Guava.jpg');
leaves(7).Type = 'Simple';
leaves(7).Shape = 'Elliptical';
leaves(7).Venation = 'Pinnate';
leaves(7).Margin = 'Serrated';
leaves(7).Color = 'Dark green';
%
leaves(8).Name = 'Tomato';
leaves(8).Image = imread('C:\Users\Joel\OneDrive\Desktop\leaves\Tomato.jpg');
leaves(8).Type = 'Compound';
leaves(8).Shape = 'Elliptical';
leaves(8).Venation = 'Pinnate';
leaves(8).Margin = 'Serrated';
leaves(8).Color = 'Light green';
%
leaves(9).Name = 'Grass';
leaves(9).Image = imread('C:\Users\Joel\OneDrive\Desktop\leaves\Grass.jpg');
leaves(9).Type = 'Simple';
leaves(9).Shape = 'Linear';
leaves(9).Venation = 'Parallel';
leaves(9).Margin = 'Entire';
leaves(9).Color = 'Dark green';
%
leaves(10).Name = 'Ovacado';
leaves(10).Image = imread('C:\Users\Joel\OneDrive\Desktop\leaves\Ovacado.jpg');
leaves(10).Type = 'Simple';
leaves(10).Shape = 'Elliptical';
leaves(10).Venation = 'Pinnate';
leaves(10).Margin = 'Serrated';
leaves(10).Color = 'Light green';
%
leaves(11).Name = 'mango';
leaves(11).Image = imread('C:\Users\Joel\OneDrive\Desktop\leaves\mango.jpg');
leaves(11).Type = 'Simple';
leaves(11).Shape = 'Elliptical';
leaves(11).Venation = 'Pinnate';
leaves(11).Margin = 'Serrated';
leaves(11).Color = 'Dark green';
%
figure;
fp = imshowpair(leaves(1).Image, leaves(2).Image,'montage');
title('mvule and lemon');
%
figure;
sp = imshowpair(leaves(3).Image, leaves(4).Image,'montage');
title('Orange and Maize');
%
figure;
tp = imshowpair(leaves(5).Image, leaves(6).Image,'montage');
title('Pawpaw and jack fruit');
%
figure;
fop = imshowpair(leaves(7).Image, leaves(8).Image,'montage');
title('Guava and Tomato');
%
figure;
fip = imshowpair(leaves(9).Image, leaves(10).Image,'montage');
title('Grass and Ovacado');
%
figure;
s = imshow(leaves(11).Image);
title('mango leaf');
%%
for i = 1:11
    leaves(i).GrayImage = rgb2gray(leaves(i).Image);
    leaves(i).BinaryImage = imbinarize(leaves(i).GrayImage);
end
%%
figure;
for i = 1:11
    subplot(3,5,i);
   oi = imshow(leaves(i).Image);
title(leaves(i).Name);
end
sgtitle('Original leaf images');
%%
figure;
for i = 1:11
    subplot(3,5,i);
    gih = imshow(leaves(i).GrayImage);
title([leaves(i).Name ' - Gray Image'] );
end
sgtitle('Grayscale leaf images');
%%
figure;
for i = 1:11
    subplot(3,5,i);
   bi = imshow(leaves(i).BinaryImage);
title([leaves(i).Name ' - Binary Image'] );
end
sgtitle('Binary leaf images');
%%
disp('LEAF STRUCTURE ARRAY');
disp(leaves);

saveas(gih,'Leaves Gray Image.jpg');
saveas(fp,'mvule and lemon image.jpg');
saveas(sp,'orange and maize image.jpg');
saveas(tp,'pawpaw and jack fruit image.jpg');
saveas(fop,'guava and tomato image.jpg');
saveas(fip,'grass and ovacado image.jpg');
saveas(s,'mango leaf image.jpg');
saveas(oi,'original leaf images.jpg');
saveas(bi,'binary leaf images.jpg')