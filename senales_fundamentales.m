% Ejecutar cada sección por separado
%% rango de tiempo
t = [-4:0.01:4];  % tiempo continuo
n  = [-4:1:4];    % tiempo discreto

%% Señal continua por partes
y = (t<1).*0.5 + (t>=1).*cos(pi*t);
plot(t,y,'b')

%% Señal continua por partes
y = (t<1).*0.5 + (t>=1).*cos(pi*t);
plot(t,y,'b')

%% Señal discreta por partes
y1 = (n<-1).*0 + (n>=-1).*(2.^(-n)+3.*n);
stem(n,y1)


%% SEÑALES FUNDAMENTALES
%% señal paso continua
u = (t<=0).*0 + (t>=0).*1;
plot(t,u,'b')
%% señal paso discreta
u_d = (n<=0).*0 + (n>=0).*1;
stem(n,u_d,'b')

%% señal rampa continua
r = (t<=0).*0 + (t>=0).*t;
plot(t,r,'b')
%% señal rampa discreta
r_d= (n<=0).*0 + (n>=0).*n;
stem(n,r_d,'b')

%% señal exponencial compleja continua
C = 2*exp(3i)
a = 3*exp(2i)
y3 = C*exp(a.*t);
y3_real = real(y3);
plot(t,y3_real,'b')
%% señal exponencial compleja discreta
C = 2*exp(3i)
a = 3*exp(2i)
y4 = C*a.^(n);
y4_real = real(y4);
stem(n,y4_real,'b')