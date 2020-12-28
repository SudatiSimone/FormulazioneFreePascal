unit Unit1;

{$mode objfpc}{$H+}

interface

uses
	Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
	Menus, Buttons, ValEdit, Grids, ExtCtrls, fpexprpars;

type

	{ TForm1 }

 TForm1 = class(TForm)
		btnCalculate: TButton;
		btnInsert2: TButton;
		btnInsert3: TButton;
		btnInsert1: TButton;
		cmbBox1: TComboBox;
		cmbBox2: TComboBox;
		cmbBox3: TComboBox;
		edtExpression: TEdit;
		edtResult: TEdit;
		StaticText1: TStaticText;
		StaticText2: TStaticText;
		StaticText3: TStaticText;
		StaticText4: TStaticText;
		StaticText5: TStaticText;
		procedure btnCalculateClick(Sender: TObject);
  procedure btnInsert1Click(Sender: TObject);
		procedure btnInsert2Click(Sender: TObject);
		procedure btnInsert3Click(Sender: TObject);


	private

	public

	end;

var
	Form1: TForm1;
	Expression: String;
	FParser: TFPExpressionParser;
	parserResult: TFPExpressionResult;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.btnInsert1Click(Sender: TObject);
begin
	edtExpression.Caption := edtExpression.Text + cmbBox1.Text;

end;



procedure TForm1.btnInsert2Click(Sender: TObject);
begin
	edtExpression.Caption := edtExpression.Text +cmbBox2.Text;

end;

procedure TForm1.btnInsert3Click(Sender: TObject);
begin
	edtExpression.Caption := edtExpression.Text +cmbBox3.Text;
end;

procedure TForm1.btnCalculateClick(Sender: TObject);
begin
	FParser := TFpExpressionParser.Create(self);
	FParser.Expression := edtExpression.Text;
	parserResult := FParser.Evaluate;
	edtResult.Caption := IntToStr(parserResult.ResInteger);

end;

end.
