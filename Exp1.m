clc; % Clears the command window
close all; % Closes all figure windows

pkg load statistics
x = -5:0.001:5;

figure;

% Plot Normal Distribution PDF with specified mean and standard deviation

y = normpdf(x, 0, 1);
plot(x, y, "linewidth", 2);
xlabel('x');
ylabel('PDF');
title('Normal Distribution PDF with Mean = 0 and Standard Deviation = 1');

