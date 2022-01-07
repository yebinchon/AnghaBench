
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int current; int buff; } ;
struct TYPE_11__ {int ts; } ;
typedef TYPE_1__ SemInfo ;
typedef TYPE_2__ LexState ;


 int TK_EOS ;
 int TK_STRING ;
 int UCHAR_MAX ;
 int inclinenumber (TYPE_2__*) ;
 int isdigit (int) ;
 int luaX_lexerror (TYPE_2__*,char*,int ) ;
 int luaX_newstring (TYPE_2__*,scalar_t__,scalar_t__) ;
 scalar_t__ luaZ_buffer (int ) ;
 scalar_t__ luaZ_bufflen (int ) ;
 int next (TYPE_2__*) ;
 int save (TYPE_2__*,int) ;
 int save_and_next (TYPE_2__*) ;

__attribute__((used)) static void read_string(LexState*ls,int del,SemInfo*seminfo){
save_and_next(ls);
while(ls->current!=del){
switch(ls->current){
case(-1):
luaX_lexerror(ls,"unfinished string",TK_EOS);
continue;
case'\n':
case'\r':
luaX_lexerror(ls,"unfinished string",TK_STRING);
continue;
case'\\':{
int c;
next(ls);
switch(ls->current){
case'a':c='\a';break;
case'b':c='\b';break;
case'f':c='\f';break;
case'n':c='\n';break;
case'r':c='\r';break;
case't':c='\t';break;
case'v':c='\v';break;
case'\n':
case'\r':save(ls,'\n');inclinenumber(ls);continue;
case(-1):continue;
default:{
if(!isdigit(ls->current))
save_and_next(ls);
else{
int i=0;
c=0;
do{
c=10*c+(ls->current-'0');
next(ls);
}while(++i<3&&isdigit(ls->current));
if(c>UCHAR_MAX)
luaX_lexerror(ls,"escape sequence too large",TK_STRING);
save(ls,c);
}
continue;
}
}
save(ls,c);
next(ls);
continue;
}
default:
save_and_next(ls);
}
}
save_and_next(ls);
seminfo->ts=luaX_newstring(ls,luaZ_buffer(ls->buff)+1,
luaZ_bufflen(ls->buff)-2);
}
