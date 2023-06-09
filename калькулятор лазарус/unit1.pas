unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    But1: TButton;
    But10: TButton;
    But11: TButton;
    But12: TButton;
    But13: TButton;
    But14: TButton;
    But17: TButton;
    But18: TButton;
    But19: TButton;
    But2: TButton;
    But3: TButton;
    But4: TButton;
    But5: TButton;
    But6: TButton;
    But7: TButton;
    But8: TButton;
    But9: TButton;
    Edit1: TEdit;

    procedure But17Click(Sender: TObject);
    procedure But18Click(Sender: TObject);
    procedure ClickBut(Sender: TObject);
         procedure ClickZnak(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  a, b, c: real;
  znak: string;

implementation

{$R *.lfm}
{TForm1}

procedure TForm1.ClickZnak(Sender: TObject);
begin
  if not(Edit1.Text ='') then
  begin
  a:= StrToFloat (Edit1.Text);
  Edit1.Clear;

  znak:=(Sender as TButton). Caption ;
  end;
end;


procedure TForm1.ClickBut(Sender: TObject);
begin
  Edit1.Text:=Edit1.Text + (Sender as TButton). Caption;
end;

 procedure TForm1.But18Click(Sender: TObject);
 begin
 Edit1.Clear;

end;

procedure TForm1.But17Click(Sender: TObject);
begin
  if not(edit1.text = '') then
  begin
  b:= StrToFloat (Edit1.Text);
  Edit1.Clear;
  case znak of
'+' : c:=a+b;
'-' : c:=a-b;
'*' : c:=a*b;
'/' : c:=a/b;
  end;
  end;

  Edit1.Text:= FloatToStr(c);

end;

end.

