v=zeros(10,1)
v

for i = 1:10,
    v(i) = 2 ^ i;
end;
v


indices = 1:10,
indices

for i = indices,
    disp(i);
end;


v
i = 1;
while i <= 5,
    v(i) = 100;
    i = i + 1;
end;
v

i = 1;
while true,
    v(i) = 999;
    i = i + 1;
    if i == 6,
        break;
    end;
end;
v

v(1)
v(6)

v(1) = 2;
if v(1) == 1, 
    disp('The Value is one');
elseif v(1) == 2,
    disp('The value is two');
else
    disp('The value is not one or two.');
end;


A = [1 2; 3 4; 5 6];
B = [1 2 3; 4 5 6];

C = A' + B;
C
C =  B * A;
C
C = B' + A;
C

A = [16 2 3 13; 5 11 10 8; 9 7 6 12; 4 14 15 1]
A

B = A(:, 1:2);
B
B = A(1:4, 1:2);
B
B = A(1:2, 1:4);
B

v = zeros(10, 1);
for i = 1:10
    for j = 1:10
        v(i) = v(i) + A(i, j) * x(j);
    end
end