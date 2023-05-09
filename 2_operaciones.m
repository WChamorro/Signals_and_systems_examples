%% Suma de funciones discretas
%% rango de tiempo
t = [-8:0.00001:8];  % tiempo continuo

%% Suma de funciones discretas
n = [-4:1:4];     % tiempo discreto
%% Suma
x = (n<-1).*0 + (n>=-1).*((2.^(-n)+5));
y = (n<0).*(3*2.^n) + (n>=0).*(n+2);
sum = x + y;

subplot(3,1,1)
stem(n,x,'b','filled')
title('x[n]')

subplot(3,1,2)
stem(n,y,'r','filled')
title('y[n]')

subplot(3,1,3)
stem(n,sum,'k','filled')
title('x[n]+y[n]')

%% Producto de funciones continuas
x1 = (t<0).*0 + (t>=0).*sin(pi.*t);
y1 = -sin(pi.*t);
prod = x1.*y1;

subplot(3,1,1)
plot(t,x1,'b')
title('x(t)')

subplot(3,1,2)
plot(t,y1,'r')
title('y(t)')

subplot(3,1,3)
plot(t,prod,'k')
title('x(t)+y(t)')

%% integral de una funcion

%% escalamiento en magnitud
y3 = (t>=0).*exp(t);
y3_escalado = (3/2)*y3;

plot(t,y3,'b')
hold on
plot(t,y3_escalado,'r')

%% escalamiento en tiempo
y = (t<=-1).*0 + (t>-1 & t<=0).*(t+1) + (t>0 & t<=2).*(1) + (t>2 & t<=3).*(-t+3) + (t>3).*0;

t2 = 0.5*t;  %equivalente a x(2t)
y_ = (t2<=-1).*0 + (t2>-1 & t2<=0).*(t2+1) + (t2>0 & t2<=2).*(1) + (t2>2 & t2<=3).*(-t2+3) + (t2>3).*0;
plot(t,y,'b')
hold on
plot(t,y_,'r')

%% manipulacion compuesta del escalamiento en tiempo
% x(-3t + 6) modificar la escala de tiempo y reemplazarla en la funcion
t3 = -3*t+6; 
y4_ = (t3<=-1).*0 + (t3>-1 & t3<=0).*(t3+1) + (t3>0 & t3<=2).*(1) + (t3>2 & t3<=3).*(-t3+3) + (t3>3).*0;
plot(t,y4,'b')
hold on
plot(t,y4_,'r')
title('x(-3t+6)')
grid on

%% simetria
%x(t)
y5 = (t<-1).*0 + (t>=-1 & t<0).*(2*t+2) + (t>=0 & t<1).*(-t+1) + (t>=1).*0; 
%x(-t)
t2 = -t;
y5_ = (t2<-1).*0 + (t2>=-1 & t2<0).*(2*t2+2) + (t2>=0 & t2<1).*(-t2+1) + (t2>=1).*0;
%COMPONENTE PAR xp = 1/2 (x(t) + x(-t))
yp = 0.5*(y5 + y5_);

%COMPONENTE IMPAR xp = 1/2 (x(t) - x(-t))
yip = 0.5*(y5 - y5_);
figure
plot(t,yp,'b')
figure
plot(t,yip,'b')
