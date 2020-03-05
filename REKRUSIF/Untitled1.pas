
program Rekursif;
uses crt;

var
    data: integer;
    pilih : string;

procedure data_masukan(var output : integer);
var
   input : integer;
begin
     clrscr;
     gotoxy(52,13);write('Masukan Data : ');readln(input);
     output:= input;
end;

function penyebut( n : integer ): integer;
begin
  if n > 1 then
  begin
     if n mod 2 = 0 then penyebut := (penyebut(n-1)+3)
     else if n mod 2 = 1 then penyebut := penyebut(n-1)+2;
  end
    else penyebut := 1;
end;

function pembilang( n : integer ): integer;
begin
  if n > 1 then
  begin
     if n = 2 then pembilang := 2
     else if n mod 2 = 0 then pembilang := (pembilang(n-1)+2)
     else if n mod 2 = 1 then pembilang := pembilang(n-1)+3;
  end
  else
      pembilang := 1;
end;

procedure hasil_perhitungan(n : integer);
var
     i : integer;
     hasil : real;
begin
    write('S = ');
    for i := 1 to n do
    begin
     hasil := hasil+(pembilang(i)/penyebut(i));
     write(pembilang(i),'/',penyebut(i),' + ');
     end;
     write('...');
     writeln();
     writeln('S = ',hasil:0:2);
end;

begin
     repeat
     begin
           data_masukan(data);
           hasil_perhitungan(data);
           write('Mau Coba Lagi[Y/T]');readln(pilih);
     end;
     until(pilih='T') or (pilih='t');
     readln;
end.
