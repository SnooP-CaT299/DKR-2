program qwerty;

var
  arr: array of Integer;
  n, i, j, min, A, B: Integer;

begin
  Write('Введите размер массива: ');
  ReadLn(n);
  SetLength(arr, n);

  for i := 0 to n - 1 do
  begin
    Write('Введите элемент массива ', i+1, ': ');
    ReadLn(arr[i]);
  end;

  min := MaxInt;

  for i := 0 to n-1 do
  begin
    for j := i+1 to n-1 do
    begin
      if abs(arr[i] - arr[j]) < min then
      begin
        min := abs(arr[i] - arr[j]);
        A := arr[i];
        B := arr[j];
      end;
    end;
  end;

  WriteLn('Два элемента, разность между которыми минимальна:');
  WriteLn('Элемент A: ', A);
  WriteLn('Элемент B: ', B);
  WriteLn('Разность по модулю: ', min);
  ReadLn;
end.
