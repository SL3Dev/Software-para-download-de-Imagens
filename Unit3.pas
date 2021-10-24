unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.Imaging.jpeg;

type
  TSoftwareDownload = class(TForm)
    Image1: TImage;
    edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SoftwareDownload: TSoftwareDownload;

implementation

uses Urlmon;

{$R *.dfm}

Function DownloadFile(DownloadFile, SalvarFile: String): Boolean;
begin
  try
    Result := URLDownloadToFile(nil, Pchar(DownloadFile), Pchar(SalvarFile),
      0, Nil) = 0;
  except
    Result := False;

  end;

end;

procedure TSoftwareDownload.SpeedButton1Click(Sender: TObject);
var
  LinkparaDownload: String;
  Pastadedestino: String;
begin
  LinkparaDownload := edit1.text;
  Pastadedestino := Edit2.text;
  if DownloadFile(LinkparaDownload, Pastadedestino) then
  begin
    ShowMessage('Downlaod Feito!');
  end
Else
  MessageDlg('Erro, link invalido', mtError,[mbOK], 0);

  end;

  end.
