
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int expdesc ;
struct TYPE_9__ {int token; } ;
struct TYPE_10__ {int linenumber; int fs; TYPE_1__ t; } ;
typedef TYPE_2__ LexState ;



 int check_match (TYPE_2__*,char,char,int) ;
 int expr (TYPE_2__*,int *) ;
 int luaK_dischargevars (int ,int *) ;
 int luaX_next (TYPE_2__*) ;
 int luaX_syntaxerror (TYPE_2__*,char*) ;
 int singlevar (TYPE_2__*,int *) ;

__attribute__((used)) static void prefixexp(LexState*ls,expdesc*v){
switch(ls->t.token){
case'(':{
int line=ls->linenumber;
luaX_next(ls);
expr(ls,v);
check_match(ls,')','(',line);
luaK_dischargevars(ls->fs,v);
return;
}
case 128:{
singlevar(ls,v);
return;
}
default:{
luaX_syntaxerror(ls,"unexpected symbol");
return;
}
}
}
