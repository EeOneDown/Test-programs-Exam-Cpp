%����� ��������

clc                   % ������ ��������� ����
clear all             % ������ ���




% ����������
a = single(1);                 % single
b = 2.5;                       % double
c = 'char';                    % char
e = [1 2 3; 4 5 6];            % matrix 2x3   !!������ �����              
% ��� ������� ����� �������(��� ������) ����������� �������� ������, �
% ����� ����� � ������� - �������� �������(���� ������)
% [1 2 3 4 5 6] � [1;2;3;4;5;6]
%    ������� ����� �������� �����:
     [0:2:10]      % = [0 2 4 6 8 10]
%    '...' ������������ ��� �������� �� ���� ������:
     [1  2  3  4  5;...
      6  7  8  9  10;...
      11 12 13 14 15;]
%    ������� ����� �������� ������ �� ������ ������:
     t = [t1 t2;...
          t3 t4;];       % ����� ��������� ����������� 
%    ������� ����� �������� ����� ����.�������
     t = ones(M,N)  % -- ������� MxN �� ������; ��� ���������� ����������
%    ������ ���������(� � ��������� ��������)
     t = zeros(M,N) % -- ���������� �� �����
     t = eye(M,N)   % -- ��������� ������� (������� � ��������� ����������)
     t = diag(t1)   % -- ������� ������� � ���������� �� ������� t1
%    �� ���� t1 - �������, �� � t ����� ���������� ��������� t1
     t = magic(N)   % -- ��� N > 3 ��������� ����������� ����������
%    ������� ������� N, ���������� ������� �������� ����� ����� �� 1 �� 
%    N^2, ����� ��������� ������� �� ������� � �������� �����. �� 
%    ���������� ����
%     C rand(M,N,..) ���� ���� ����������, ��� ������� ������� ������� ��
%    ��������� ��������� ������ �� 0 �� 1 ����������� MxNx..
     t = randi([A B],M,N) % -- ������� ������� �� ��������� ��������� �� A
%    �� B ����������� MxN
 
f = cell(2,3);                 %cellArray - ������ ����� ������  !!����� 
%                              ����������
g = {1 2 'xx'; 'qw' 5 '9'};    % cellArray �� ����������, ������� 2�3
g{1,2};             % = 2      % ������ � ��������
g(2,1);             % = 'qw'   % ������ � ������
e(2,2);             % = 5      % ������ � �������� �������




% ��������� 
+ - * / \ ^   % --  �������
.* ./ .\ .^  % --  �������� ��� ������� �������� ��������, � �� ��� ����
% �������
% ��������� A./B �������� � ������� � ���������� a(k,m)/b(k,m), 
% � ��������� A.\ B �������� � ������� � ���������� b(k,m)/a(k,m).      
b=a(:);                        % ����������� ������� � ������� 
a';           % ���������������� �������

disp(a);            % = 1      % ������� � ������� �������� a
a = input('text');             % ������� � ������� text � ���� ����� 
% �������� ��� ���������� a

% ������ � ���������

size(e);            % = [2 3]  % ���������� ������ � ����� �������
length(e);          % = 3      % ���������� max(��������)

% t1 - ������� 
t = nnz(t1)        % -- ���������� ���-�� ��������� ���������
t = ndim(t1)       % -- ���������� ���-�� ������������
t = numel(t1)      % -- ���������� ���-�� ���������      

% ������� ��� �������� ���� ������� (1/0)
% a - ����������
ismatrix(a)
isvector(a)
iscolumn(a)        % �������?
isrow(a)           % ������?
isscalar(a)
isempty(a)

% ������� ��������������
% t1 - �������
t = rot90(t1,N)       % -- �������� ������� t1 �� 90 �������� ������
% �������, ���� N > 0, �� �������, ���� N < 0
t = fliplr(t1)        % -- ������������ ������� ������� ����������� 
% ������������ ������������ ���(���� ������) ��� ������������ ������������
% �������, ������� �������� �� �����(���� ��������)
t = flipud(t1)        % -- ������ fliplr ��� �����
t = sort(t1)          % -- ���������� �� ����������� � �� ��������
t = sortrows(t1)      % -- ���������� �� ����������� � �� �������
sort(t1,'ascend')     % -- �� �����������
sort(t1,'descend')    % -- �� ��������
t = reshape(t1,M,N)   % -- ���������� ������� �� ��������� t1 ������� MxN

% �������������� �������
% t1 - ������� 
t = det(t1)           % -- ������������ ������� t1
t = eig(t1)           % -- ����������� ����� ������� t1
t = inv(t1)           % -- �������� ������� ��� t1
t = sum(t1)           % -- ����� ��������� �� ��������
t = prod(t1)          % -- ������������ ��������� �� ��������
max(t1);min(t1)       % -- ���� ��� ��� �������� �� ��������
t = mean(t1)          % -- ������� �������� ���������



%������� 
% ������ <NAME> ���� ������ ��� ������� ��� �������� � �������
function [argOUT] = <NAME>(argIN)
%     [����������]      (���������)
%     ��������� � ���������� �-��� ����� � ������ ������ ��������
% � ���� ������� ����������� ����� � �������!!!
end

% ������ ������
[a1] = <NAME>(b1);
[a1,a2] = <NAME>(b1,b2,b3);
% ���-�� ����������� � ������������ �������� ������ ���� �������

% ���� �� ���-�� ����������, ������������ ��������� ������:
function[varargout] = <NAME>(varargin)
%    varargout -- ����������� ���������� ������������ ���������; ��� ������
%    �����; ����� ����������� [a_1,...,a_n] = <NAME>()
%    nargout = ���-�� ������������ ���������
%    varargin  -- ����������� ���-�� ����������� ����������; ���� ������
%    �����; ����� ����������� <NAME>(a_1,...,a_n)
%    nargin  = ���-�� ����������� ����������
%  ��� varargin � varargout ��������� � ����������� �������� ����������
%  ����� varargin{1} ��� varargout{3}
end



if �������                        % ��� �����-���� �������� 
    ����
else
    ���� 
end


switch ����������                 % ���������� ��� ������� � ��������
    case �������� 
        ��������
    case {��������1, ��������2}
        ��������
    otherwise 
        ��������
end 


for ���������� = �� : ��� : ��    % ��� ����
    ����
end


while �������                     % ��� �������
    ����
end



% ��������
y = polyval(p, s)      % p = [p1 p2 ... pn p(n+1)] - ������ ������������� 
% �������� p(x) = p1*x^n + p2*x^(n-1) + ... + pn*x + p(n+1), ��������� 
% �������� ����� �������� � ����� x = s.
% ���� S - �������, �� ������� polyval(p, S) - ��� ������ 
% �������� �������� p(X) ��� ������� �������� ������� S.
c = conv(a,b)          % ��������� ���������, ��� a - ������ ������������� 
% ������� ��������, � b - �������; ���������� ������������ ������ ��������
[q, r] = deconv(c, a)  % ������� �������� � �� ������� a ���, ��� q - 
% �������, � � - ������� �� ������� (����������� c = conv(q, a) + r)
dp = polyder(p)        % ���������� ������������ ����������� �������� p(x)
dp = polyder(a, b)     % ���������� ����������� �� ������������ 
% ��������� a(x) * b(x) 
[q, p] = polyder(b, a) % ���������� ����������� �� ��������� ��������� 
% b(x)/a(x) � ���� ��������� ��������� q(x)/p(x)
r = roots(p)           % ���������� ������-������� ������ �������� p(x)
p = poly(A)            % A - ������� ������� n, ��������� ������-������
% ������������� ������������������� �������� p(s) = det(sI - A) =
% = p1*s^n + p2*s^(n-1) + ... + pn*s + p(n+1)
p = poly(r)            % r - ������-������� ������ ���������� ��������,
% ��������� ������-������ ������������� ����� ��������



% �������
plot(x,y)              % ������ ������ ������� y(x)
% ��� x - ������ �������� ���������, y - ������ �������� �������
hold on                % ������ �������� ������ ���
grid on                % ��� �����
close all              % ��������� ��� ����������� ����
cla                    % ������� ��� ������� � ����
title('Name')          % ��������
xlabel('NameX')        % �������� ��� ��� X
ylabel('NameY')        % �������� ��� ��� Y
xlim([min max])        % ����� �������� ��� X �� min �� max 
ylim([min max])        % ���������� xlim ��� ��� Y
subplot(M,N,K)         % ��������� MxN �������� � ����, � ��������� � K-��
text(x,y,'TEXT')       % � ����� (x,y) ��������� TEXT

% ������ ��� ������
x = 0 : 0.001: 4*pi;
y = sin(x);
plot(x,y);                  

% ��������� ���� �������
plot(x,y,'...')        % ������ ... ������ � ����� �������:

% ��� �����
% :
% -
% --
% -.

% ���� �����
% r - Red
% g - Green
% b - Blue
% c - Cyan
% m - Magenta
% y - Yellow
% k - blacK 
% w - White

% ��� ������� �����
% . - �����
% o - ����
% x - �����
% + - ����
% * - ���������
% s - �������
% � 
% ^ - �����������
% > - ���������� �����������
% < - ������������ �����������
% v - ������������ �����������
% p - ������������ ������
% h - ������������� ������

% � ������ p ����� ��� �������� � ��� �������� ����� �������
p = plot(x,y,'��� ��������1', ��������1, � ��);
% LineWidth, Color, MarkerSize, MarkerFaceColor
% 5          [1 0 0.7]    15    'r'... / [1 0 0.4]    
% ��� �� ����� ������ ��� ��� ���������� ������� � ������� set()
set(p,'��� ��������1', ��������1, � ��);
% get() ��������� �������� �������� �������� ���������� �������
get(p,'��� ��������');

pause(T)         % ���� T ������

'ButtonDownFcn',@<NAME>       % -- ��������, ���������� �� �������� ��
% ������� ������ � ������������ ��������� ������� <NAME>