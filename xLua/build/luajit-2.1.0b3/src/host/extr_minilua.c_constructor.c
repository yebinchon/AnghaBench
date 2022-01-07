
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct ConsControl {scalar_t__ nh; scalar_t__ na; int v; int * t; scalar_t__ tostore; } ;
typedef int expdesc ;
struct TYPE_21__ {TYPE_3__* f; } ;
struct TYPE_18__ {char token; } ;
struct TYPE_17__ {char token; } ;
struct TYPE_20__ {int linenumber; TYPE_2__ lookahead; TYPE_1__ t; TYPE_5__* fs; } ;
struct TYPE_19__ {int * code; } ;
typedef TYPE_4__ LexState ;
typedef TYPE_5__ FuncState ;


 int OP_NEWTABLE ;
 int SETARG_B (int ,int ) ;
 int SETARG_C (int ,int ) ;

 int VRELOCABLE ;
 int VVOID ;
 int check_match (TYPE_4__*,char,char,int) ;
 int checknext (TYPE_4__*,char) ;
 int closelistfield (TYPE_5__*,struct ConsControl*) ;
 int init_exp (int *,int ,int) ;
 int lastlistfield (TYPE_5__*,struct ConsControl*) ;
 int listfield (TYPE_4__*,struct ConsControl*) ;
 int luaK_codeABC (TYPE_5__*,int ,int ,int ,int ) ;
 int luaK_exp2nextreg (TYPE_5__*,int *) ;
 int luaO_int2fb (scalar_t__) ;
 int luaX_lookahead (TYPE_4__*) ;
 int recfield (TYPE_4__*,struct ConsControl*) ;
 scalar_t__ testnext (TYPE_4__*,char) ;

__attribute__((used)) static void constructor(LexState*ls,expdesc*t){
FuncState*fs=ls->fs;
int line=ls->linenumber;
int pc=luaK_codeABC(fs,OP_NEWTABLE,0,0,0);
struct ConsControl cc;
cc.na=cc.nh=cc.tostore=0;
cc.t=t;
init_exp(t,VRELOCABLE,pc);
init_exp(&cc.v,VVOID,0);
luaK_exp2nextreg(ls->fs,t);
checknext(ls,'{');
do{
if(ls->t.token=='}')break;
closelistfield(fs,&cc);
switch(ls->t.token){
case 128:{
luaX_lookahead(ls);
if(ls->lookahead.token!='=')
listfield(ls,&cc);
else
recfield(ls,&cc);
break;
}
case'[':{
recfield(ls,&cc);
break;
}
default:{
listfield(ls,&cc);
break;
}
}
}while(testnext(ls,',')||testnext(ls,';'));
check_match(ls,'}','{',line);
lastlistfield(fs,&cc);
SETARG_B(fs->f->code[pc],luaO_int2fb(cc.na));
SETARG_C(fs->f->code[pc],luaO_int2fb(cc.nh));
}
