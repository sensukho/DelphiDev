object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Demo1'
  ClientHeight = 573
  ClientWidth = 708
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 573
    Align = alLeft
    Caption = 'Panel_left'
    TabOrder = 1
    object mcHdepositos: TMonthCalendar
      Left = -3
      Top = 0
      Width = 193
      Height = 154
      Date = 41197.624429976850000000
      TabOrder = 0
      OnClick = mcHdepositosClick
    end
  end
  object PageControl1: TPageControl
    Left = 185
    Top = 0
    Width = 523
    Height = 573
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 517
    object TabSheet1: TTabSheet
      Caption = 'Datos1'
      ExplicitLeft = 6
      ExplicitTop = 28
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 515
        Height = 545
        Align = alClient
        Caption = 'Panel_main'
        TabOrder = 0
        ExplicitLeft = 2
        ExplicitTop = 47
        ExplicitHeight = 498
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 513
          Height = 41
          Align = alTop
          Caption = 'Panel_Top'
          TabOrder = 0
          ExplicitLeft = 7
          ExplicitTop = 8
          ExplicitWidth = 498
        end
        object Panel4: TPanel
          Left = 1
          Top = 42
          Width = 513
          Height = 502
          Align = alClient
          Caption = 'Panel4'
          TabOrder = 1
          ExplicitLeft = 7
          ExplicitTop = 55
          ExplicitWidth = 185
          ExplicitHeight = 41
          object DBGrid1: TDBGrid
            Left = 1
            Top = 1
            Width = 511
            Height = 500
            Align = alClient
            DataSource = dsrHdespositos
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Datos2'
      ImageIndex = 1
      ExplicitWidth = 509
    end
  end
  object dsrHdespositos: TDataSource
    DataSet = dsHdespositos
    Left = 664
    Top = 80
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'getFBConect'
    DriverName = 'Interbase'
    GetDriverFunc = 'getSQLDriverINTERBASE'
    LibraryName = 'dbxint30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Interbase'
      'Database=localhost:\BASES\9bpos_eurest.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'Interbase TransIsolation=ReadCommited'
      'Trim Char=False'
      'QuoteObjects=True'
      'HostName=localhost')
    TableScope = [tsTable]
    VendorLib = 'gds32.dll'
    Connected = True
    Left = 600
    Top = 80
  end
  object dsHdespositos: TSimpleDataSet
    Aggregates = <>
    Connection = SQLConnection1
    DataSet.CommandText = 
      'SELECT b."Unidad", a."Dia1", a."Dia2", a."Dia3", a."Dia4", a."Di' +
      'a5", a."Dia6", a."Dia7", a."Dia8", a."Dia9", a."Dia10", a."Dia11' +
      '", a."Dia12", a."Dia13", a."Dia14", a."Dia15", a."Dia16", a."Dia' +
      '17", a."Dia18", a."Dia19", a."Dia20", a."Dia21", a."Dia22", a."D' +
      'ia23", a."Dia24", a."Dia25", a."Dia26", a."Dia27", a."Dia28", a.' +
      '"Dia29", a."Dia30", a."Dia31" '#13#10'FROM "H1depositos" a INNER JOIN ' +
      '"Mlocal" b ON a."Id_Local" = b."Id_Local"  WHERE a."Anio" = :ani' +
      'o AND a."Mes" = :mes'
    DataSet.DataSource = dsrHdespositos
    DataSet.MaxBlobSize = -1
    DataSet.Params = <
      item
        DataType = ftUnknown
        Name = 'anio'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'mes'
        ParamType = ptInput
      end>
    Params = <
      item
        DataType = ftInteger
        Name = 'anio'
        ParamType = ptInput
        Value = 0
      end
      item
        DataType = ftInteger
        Name = 'mes'
        ParamType = ptInput
        Value = 0
      end>
    Left = 632
    Top = 80
  end
end
