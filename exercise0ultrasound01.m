clc
clear all
close all
%a ultrasound-type source signal 
% values need alteration
%version 2
f0=1;
w0=2*pi*f0;
dt=0.125;
tvec=-8:dt:8;
t=tvec;
t0=1/f0;
tn=t;
alpha=0.075;
wt=cos(2*pi*tn).*(exp((-alpha^2)*(pi^2)*(tn.*tn)));
figure;
subplot 121;
plot(wt); xlabel('t')
ylabel('w(t)')
subplot 122;

%%  Fourier domain

y = fftshift(fft(wt)); 
[nt_fft,nx_fft]=size(y);
ff=linspace(-0.5,0.5,nx_fft)/dt;
plot(ff,abs(y)); 
xlabel('Magnitude')
ylabel('Frequency')


