clear, clc;
t = 0:pi/50:5*pi/3;  % +-150 degree
r = 0.95;
x_center = 0;
y_center = 0;
x = r * cos(t) + x_center;
y = r * sin(t) + y_center;
z = zeros(1, length(t));
plot3(x, y, z, '-k'), grid;
