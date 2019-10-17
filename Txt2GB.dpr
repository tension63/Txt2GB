program Txt2GB;

uses
  Forms,
  Main in 'Main.pas' {MainForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Txt to GB2312 codes';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
