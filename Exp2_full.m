clc;
clear;
close all;

n = input("Enter the no. of Source Elements : ");
q = input("Enter the channel matrix P(Y/X) : ");

%matrix p(Y/X)
disp(q);
disp(' ');

N=1:n;
p = input("Enter the source Probability : ");
%Probabilitys for x

px= diag(p,n,n);

%matrix P(X)
disp("P(X) :");
disp(px);
disp(' ');

pxy=px*q;

% P(X,Y)=P(X)*P(Y|X)
disp("P(X,Y) : ");
disp(pxy);
disp(' ');

% P(Y)
py=p*q;
disp('P(Y):');
disp(py);
disp(' ');

%Entropy of source h(x)
Hx = 0 ;
for i = 1:n
  Hx=Hx+(-(p(i)*log2(p(i))));

end

disp('H(x): ');
disp(Hx);
disp(' ');

% Entropy of destination H(y)
Hy = 0;
for i = 1:n
  Hy=Hy+(-(py(i)*log2(py(i))));
end

disp('Entropy of destination H(y): ');
disp(Hy);
disp(' ');

% Mutual Entropy H(x,y)
hxy=0
for i = 1:n
  for j = 1:n
    hxy=hxy+(-pxy(i,j) * log2(pxy(i,j)) );
  end
end

disp('Mutual Entropy H(x,y): ');
disp(hxy);
disp(' ');

% Conditional Entropy H(y/x)
h1 = hxy - Hx ;
disp('Conditional Entropy H(x/y): ');
disp(h1);
disp(' ');

% Conditional Entropy H(x/y)
h2= hxy - Hy;
disp('Conditional Entropy H(y/x): ');
disp(h2);
disp(' ');

% Mutual Information I(x,y)
lxy= Hx - h2;
disp('Mutual Information l(x,y): ');
disp(lxy);
disp(' ');

if h2==0
  disp("This channel is a lossless channel ");
else
  disp("This channel is not a lossless channel ");
end

if lxy==0
  disp ("This channel is a useless channel ");
else
  disp("This channel is not a useless channel ");
end

if Hx==Hy
  if h1==0
    disp("This channel is a noiseless channel ");
else
  disp("This channel is not a noiseless channel ");
  end
endif
