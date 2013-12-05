program sudoku;
uses wincrt;
var g:array[1..9,1..9] of integer;
    a:array[1..9,1..9] of integer;
    prob:array[1..9,1..9] of char;
    gram:array[1..18] of integer;
    counter:array[1..9,1..9] of integer;
    ri,rj,x,gnwsta,n,i,j:integer;

BEGIN
randomize;

{18arhs PINAKAS PI8ANWN LUSEWN ANA GRAMMH}

for x:=1 to 9 do
 begin
  gram[x]:=x;
 end;
 for x:=1 to 9 do
 begin
  gram[x+9]:=x;
 end;


{EPE3ERGASIA LUSHS SUDOKU}

x:=9;                         {texnasma gia na texw to 18arh pinaka apo 1-9 meta 2-10 meta 3-11...}
for i:=1 to 9 do
begin
 x:=x-8;                      {to rixnw kata 8 gia na pesei sto 1 kai otan 3anampei 8a pesei sto 2, meta sto 3...}
 for j:=1 to 9 do
 begin
     g[i,j]:=gram[x];      
     x:=x+1;                  {1h fora teliwnei me 10, thn 2h me 11, then 3h me 12...}
 end;
end;

for i:=1 to 9 do
begin
 a[i,1]:=g[i,2];
 a[i,2]:=g[i,5];
 a[i,3]:=g[i,8];
 a[i,4]:=g[i,1];
 a[i,5]:=g[i,4];
 a[i,6]:=g[i,7];
 a[i,7]:=g[i,3];
 a[i,8]:=g[i,6];
 a[i,9]:=g[i,9];
end;

{PINAKAS TOU XRHSTH}

for i:=1 to 9 do
begin
 for j:=1 to 9 do
 begin
  prob[i,j]:='-';
 end;  
end;


for n:=1 to 24 do
begin
 ri:=random(9)+1;    {giati random(9) pianei apo 0 ws 8}
 rj:=random(9)+1;
 prob[ri,rj]:=char(a[ri,rj]+48);
end;

{TIME TO PLAY THE GAME}

writeln(' SUDOKU ');
writeln('========');

for i:=1 to 9 do
begin
 for j:=1 to 9 do
 begin
  write(' ',prob[i,j]);
 end;
writeln;
end;

writeln('ENTER gia thn LUSH');
writeln(' ');

readln;
writeln(' LUSH ');
writeln('=======');


for i:=1 to 9 do
begin
 for j:=1 to 9 do
 begin
  write(' ',a[i,j]);
 end;
writeln;
end;

writeln(' ');


END.
