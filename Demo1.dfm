object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Demo1'
  ClientHeight = 573
  ClientWidth = 702
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 573
    Align = alLeft
    Caption = 'Panel_left'
    TabOrder = 0
    ExplicitHeight = 577
  end
  object PageControl1: TPageControl
    Left = 191
    Top = 0
    Width = 514
    Height = 573
    ActivePage = TabSheet1
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Datos1'
      object Panel2: TPanel
        Left = -4
        Top = 0
        Width = 517
        Height = 41
        Caption = 'Panel_top'
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Datos2'
      ImageIndex = 1
    end
  end
end
