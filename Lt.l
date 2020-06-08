
%{
#include<stdio.h>
#include "y.tab.h"
%}

%%
[0-9]+			{yylval.integer=atoi(yytext);
			return NUMBER;}

[0-9]*\.[0-9]+ 		{yylval.real=(float)atof(yytext);
			return FLOAT;}

Result 			{return Result;}
of 			{return of;}
to 			{return to;}
is 			{return is;}
Miles 			{return Miles;}
Km 			{return Km;}
Gallon 			{return Gallon;}
Litres 			{return Litres;}
Acres 			{return Acres;}
Hectares 			{return Hectares;}
Pound 			{return Pound;}
Kg 			{return Kg;}
[\n] 			{return yytext;}
[/t] 	;
%%
int yywrap(){return 1;}
