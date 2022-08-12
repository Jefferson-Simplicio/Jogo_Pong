object campo: Tcampo
  Left = 194
  Top = 110
  Caption = 'CAMPO'
  ClientHeight = 523
  ClientWidth = 967
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object bola: TPanel
    Left = 414
    Top = 229
    Width = 25
    Height = 25
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
  end
  object Player1: TPanel
    Left = 925
    Top = 189
    Width = 25
    Height = 137
    Color = clCream
    ParentBackground = False
    TabOrder = 1
  end
  object Player2: TPanel
    Left = 12
    Top = 192
    Width = 25
    Height = 137
    Color = clCream
    ParentBackground = False
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 465
    Top = 283
    Width = 25
    Height = 29
    Color = clCream
    ParentBackground = False
    TabOrder = 3
  end
  object Panel2: TPanel
    Left = 465
    Top = 213
    Width = 25
    Height = 29
    Color = clCream
    ParentBackground = False
    TabOrder = 4
  end
  object Panel3: TPanel
    Left = 465
    Top = 318
    Width = 25
    Height = 29
    Color = clCream
    ParentBackground = False
    TabOrder = 5
  end
  object Panel4: TPanel
    Left = 465
    Top = 248
    Width = 25
    Height = 29
    Color = clCream
    ParentBackground = False
    TabOrder = 6
  end
  object Panel5: TPanel
    Left = 465
    Top = 353
    Width = 25
    Height = 29
    Color = clCream
    ParentBackground = False
    TabOrder = 7
  end
  object Panel6: TPanel
    Left = 465
    Top = 389
    Width = 25
    Height = 29
    Color = clCream
    ParentBackground = False
    TabOrder = 8
  end
  object Panel7: TPanel
    Left = 465
    Top = 424
    Width = 25
    Height = 29
    Color = clCream
    ParentBackground = False
    TabOrder = 9
  end
  object Panel8: TPanel
    Left = 465
    Top = 459
    Width = 25
    Height = 29
    Color = clCream
    ParentBackground = False
    TabOrder = 10
  end
  object painel_baixo: TPanel
    Left = 12
    Top = 487
    Width = 938
    Height = 29
    Color = clCream
    ParentBackground = False
    TabOrder = 11
  end
  object painel_cima: TPanel
    Left = 12
    Top = 10
    Width = 938
    Height = 29
    Color = clCream
    ParentBackground = False
    TabOrder = 12
  end
  object Panel11: TPanel
    Left = 465
    Top = 178
    Width = 25
    Height = 29
    Color = clCream
    ParentBackground = False
    TabOrder = 13
  end
  object Panel12: TPanel
    Left = 465
    Top = 143
    Width = 25
    Height = 29
    Color = clCream
    ParentBackground = False
    TabOrder = 14
  end
  object Panel13: TPanel
    Left = 465
    Top = 108
    Width = 25
    Height = 29
    Color = clCream
    ParentBackground = False
    TabOrder = 15
  end
  object Panel14: TPanel
    Left = 465
    Top = 73
    Width = 25
    Height = 29
    Color = clCream
    ParentBackground = False
    TabOrder = 16
  end
  object Panel16: TPanel
    Left = 465
    Top = 38
    Width = 25
    Height = 29
    Color = clCream
    ParentBackground = False
    TabOrder = 17
  end
  object moverDireita: TTimer
    Interval = 18
    OnTimer = moverDireitaTimer
    Left = 896
    Top = 424
  end
  object moverEsquerda: TTimer
    Enabled = False
    Interval = 18
    OnTimer = moverEsquerdaTimer
    Left = 80
    Top = 440
  end
  object moverCima: TTimer
    Enabled = False
    Interval = 18
    OnTimer = moverCimaTimer
    Left = 280
    Top = 344
  end
  object moverBaixo: TTimer
    Interval = 18
    OnTimer = moverBaixoTimer
    Left = 200
    Top = 344
  end
end
