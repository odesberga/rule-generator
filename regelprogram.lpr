program regelprogram;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, Unit1, sdposeriallaz, Unit2, Unit3
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmSerialSettings, frmSerialSettings);
  Application.CreateForm(TFrmSerialMonitor, FrmSerialMonitor);
  Application.Run;
end.

