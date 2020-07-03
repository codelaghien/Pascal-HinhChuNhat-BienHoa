Program HinhChuNhat;
Uses Crt;

Var
    Columns : Integer;
    Rows    : Integer;
    i       : Integer;

Procedure InHang(Columns : Integer);
Var
    i       : Integer;
Begin
    For i := 1 To Columns Do
    Begin
        Write('*');
    End;
    WriteLn();
End;

Procedure InHangTrang(Columns : Integer);
Var
    i       : Integer;
Begin
    Write('*');
    For i := 2 To Columns - 1 Do
    Begin
        Write(' ');
    End;
    Write('*');
    WriteLn();
End;

Begin
    ClrScr;
    WriteLn('Hoc in ra man hinh hinh chu nhat');

    Repeat
          Write('Nhap vao so cot: ');
          ReadLn(Columns);
    Until Columns >= 2;

    Repeat
          Write('Nhap vao so hang: ');
          ReadLn(Rows);
    Until Rows >= 2;

    InHang(Columns);

    For i := 2 To Rows - 1 Do
    Begin
        InHangTrang(Columns);
    End;

    InHang(Columns);

    ReadKey;
End.
