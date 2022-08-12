unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  Tcampo = class(TForm)
    bola: TPanel;
    moverDireita: TTimer;
    Player1: TPanel;
    Player2: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    painel_baixo: TPanel;
    painel_cima: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel16: TPanel;
    moverEsquerda: TTimer;
    moverCima: TTimer;
    moverBaixo: TTimer;
    procedure moverDireitaTimer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure moverEsquerdaTimer(Sender: TObject);
    procedure moverBaixoTimer(Sender: TObject);
    procedure moverCimaTimer(Sender: TObject);
  private
    { Private declarations }
    procedure colisaoTeto;
    procedure colisaoChao;
  public
    { Public declarations }
  end;

var
  campo: Tcampo;

implementation

{$R *.dfm}
procedure colisaoPlayer2;
var
  corpo2: integer;
begin
  corpo2 := campo.bola.Left + campo.bola.Width;
  if corpo2 <= campo.Player2.Left then
  begin
    campo.moverDireita.Enabled := True;
    campo.moverEsquerda.Enabled := False;
  end;
end;
procedure colisaoPlayer1;
var
  corpo: integer;
begin
  corpo := campo.bola.Left + campo.bola.Width;
  if corpo >= campo.Player1.Left then
  begin
    campo.moverDireita.Enabled := false;
    campo.moverEsquerda.Enabled := True;
  end;
end;
procedure Tcampo.moverBaixoTimer(Sender: TObject);
begin
  bola.Top := bola.Top - 5;
  colisaoChao;
end;

procedure Tcampo.moverCimaTimer(Sender: TObject);
begin
  bola.Top := bola.Top + 5;
  colisaoTeto;
end;

procedure Tcampo.moverDireitaTimer(Sender: TObject);
begin
 bola.Left := bola.Left +5;
 colisaoPlayer1;
end;

procedure Tcampo.colisaoChao;
begin
  var
  corpo: integer;
begin
  corpo := campo.bola.top + campo.bola.height;
  if corpo <= campo.painel_baixo.top then
  begin
    campo.moverCima.Enabled := true;
    campo.moverBaixo.Enabled := false;
  end;
end;
end;

procedure Tcampo.colisaoTeto;
begin
var
  corpo: integer;
begin
  corpo := campo.bola.left+ campo.bola.height;
  if corpo <= campo.painel_cima.left then
  begin
    campo.moverCima.Enabled := false;
    campo.moverBaixo.Enabled := True;
  end;
end;
end;

procedure Tcampo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 40 then
    begin
      Player1.Top := Player1.Top + 10;
    end;
  if key = 38 then
    begin
      Player1.Top := Player1.Top - 10;
    end;
  if key = 83 then
    begin
     Player2.Top := Player2.Top + 10;
    end;
  if key = 87 then
    begin
     Player2.Top := Player2.Top - 10;
    end;
end;

procedure Tcampo.moverEsquerdaTimer(Sender: TObject);
begin
  bola.Left := bola.Left - 5;
  colisaoPlayer2;
end;

end.
