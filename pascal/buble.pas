const
    max = 50;
type
    mas = array[1..max] of integer;
var
    arr: mas;
    i, j, k: integer;
 
procedure generate(i: integer; var arr: mas);
begin
    randomize;
 
    for i := 1 to max do begin
        arr[i] := random(100);
        write (arr[i]);
        write (' ');
    end;
end;

procedure sort(i, j, k: integer; arr: mas);
begin
    for i := 1 to max-1 do
        for j := 1 to max-i do
            if arr[j] > arr[j+1] then begin
                k := arr[j];
                arr[j] := arr[j+1];
                arr[j+1] := k
            end;

    for i := 1 to max do begin
        write (arr[i]);
        write (' ');
    end;
end;

begin
    write ('Before: ');
    generate(i, arr);
    
    writeln; writeln;
     
    write ('After: ');
    sort(i, j, k, arr);
end.