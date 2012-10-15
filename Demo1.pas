unit Demo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, DBXpress, DB, SqlExpr, FMTBcd, Grids, DBGrids,
  DBClient, SimpleDS;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    dsrHdespositos: TDataSource;
    SQLConnection1: TSQLConnection;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    dsHdespositos: TSimpleDataSet;
    mcHdepositos: TMonthCalendar;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    procedure mcHdepositosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.mcHdepositosClick(Sender: TObject);
Var
  myDate : TDateTime;
  myYear, myMonth, myDay : Word;
begin
  //Showmessage(DateToStr( mcHdepositos.Date ));
  dsHdespositos.Close;
  myDate := mcHdepositos.Date;
  DecodeDate(myDate, myYear, myMonth, myDay);
  dsHdespositos.Params[0].Value := myYear;
  dsHdespositos.Params[1].Value := myMonth;
  dsHdespositos.Open;
  dsHdespositos.Active := True;
end;

end.
