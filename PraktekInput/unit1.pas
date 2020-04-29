unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnSimpan: TButton;
    btnReset: TButton;
    cbKota: TComboBox;
    cbxFoto: TCheckBox;
    cbxKTP: TCheckBox;
    cbxIjazah: TCheckBox;
    Edit1: TEdit;
    Memo1: TMemo;
    rgJenisKelamin: TRadioGroup;
    procedure btnResetClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure cbxFotoChange(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnSimpanClick(Sender: TObject);
begin
  Memo1.lines.add(Edit1.text);
  if(rgJenisKelamin.ItemIndex=0)then
  begin
  memo1.lines.add('Laki-Laki');
  end
  else if(rgJenisKelamin.ItemIndex=1)then
  begin
   Memo1.lines.add('Perempuan');
  end;

  Memo1.lines.add(cbKota.text);

  if(cbxFoto.Checked) then
     memo1.Lines.add('Foto Ada');

  if(cbxKTP.Checked) then
     memo1.lines.add('KTP Ada');

  if(cbxIjazah.Checked) then
     memo1.lines.add('Ijazah Ada');

end;

procedure TForm1.cbxFotoChange(Sender: TObject);
begin

end;

procedure TForm1.btnResetClick(Sender: TObject);
begin
  Edit1.text:='';
  Memo1.clear;
  rgJenisKelamin.itemindex:=-1;
  cbKota.itemindex:=-1;
  cbKota.text:='';
  cbxFoto.checked:=False;
  cbxKTP.checked:=False;
  cbxIjazah.checked:=False;

end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.FormShow(Sender: TObject);
begin
  btnResetclick(sender);


end;

end.

