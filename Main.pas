unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TMainForm = class(TForm)
    Panel1: TPanel;
    Edit1: TEdit;
    Button1: TButton;
    Memo1: TMemo;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  Buffer: array[0..1000] of Char;

implementation

{$R *.dfm}

procedure TMainForm.Button1Click(Sender: TObject);
begin
      StrPCopy(Buffer, Edit1.Text);
      Memo1.Lines.Add(
                   Edit1.Text + '=' +
                   '$'+IntToHex(Ord(buffer[0]),2) + ',' +
                   '$'+IntToHex(Ord(buffer[1]),2) + ',' +
                   '$'+IntToHex(Ord(buffer[2]),2) + ',' +
                   '$'+IntToHex(Ord(buffer[3]),2) + ',' +
                   '$'+IntToHex(Ord(buffer[4]),2) + ',' +
                   '$'+IntToHex(Ord(buffer[5]),2) + ',' +
                   '$'+IntToHex(Ord(buffer[6]),2) + ',' +
                   '$'+IntToHex(Ord(buffer[7]),2)
                   );

end;

end.
