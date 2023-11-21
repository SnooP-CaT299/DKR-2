program qwerty;

var
  str: string;
  wordCount, charCount: integer;
  i: integer;
  inWord: boolean;

begin
  Write('Введите строку:');
  ReadLn(str);

  wordCount := 0;
  charCount := 0;
  inWord := false;

  for i := 1 to Length(str) do
  begin
    if (str[i] <> ' ') and (str[i] <> '.') and (str[i] <> ',') then
    begin
      if not inWord then
      begin
        inWord := true;
        wordCount := wordCount + 1;
      end;
      charCount := charCount + 1;
    end
    else
    begin
      inWord := false;
    end;
  end;

  WriteLn('Количество слов в строке: ', wordCount);
  WriteLn('Количество символов в строке: ', charCount);

  readln;
end.
