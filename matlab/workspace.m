d_1 = 450;
d_2 = 10;
a_1 = 400;
a_2 = 350;

theta_1 = linspace(-150,150,100)*pi/180;
theta_2 = linspace(-160,160,100)*pi/180;
q3 = linspace(0,280,100);
theta_4 = linspace(-180,180,100)*pi/180;

[T1, T2, D3] = ndgrid(theta_1, theta_2, q3);

xM = round(a_2 * cos(T1 + T2) + a_1 * cos(T1));
yM = round(a_2 * sin(T1 + T2) + a_1 * sin(T1));
zM = D3;

plot3(xM(:),yM(:),zM(:), '*')
hold on
plot3(xM(:),yM(:),ones(size(xM(:))) * 281, '*', 'Color','r')
hold on
plot3(xM(:),yM(:),zeros(size(xM(:))), '*', 'Color','r')
