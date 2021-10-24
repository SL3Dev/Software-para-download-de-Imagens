program Project2;

uses
  Vcl.Forms,
  Unit3 in 'Unit3.pas' {SoftwareDownload};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TSoftwareDownload, SoftwareDownload);
  Application.Run;
end.
