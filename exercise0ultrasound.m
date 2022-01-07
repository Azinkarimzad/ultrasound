clc
clear all
close all
%a ultrasound-type source signal 
% values need alteration
x=-1500:10:1500;
f0=1000;
w0=2*pi*f0;
dt=0.000125;
tvec=-100:dt:100;
t=tvec*dt;
t0=1/f0;
tn=t-t0;
alpha=0.002;
dx=x(2)-x(1);
wt=cos(2*pi*1000*tn).*(exp(-3*30^2*pi^2*tn.*tn));
plot(wt)
%%  Fourier domain

y = fftshift(fft(wt));   
fs = 1/f0;
f = (0:length(y)-1)*fs/length(y);
plot(f,abs(y))
xlabel('Frequency (Hz)')
ylabel('Magnitude')
title('Magnitude')