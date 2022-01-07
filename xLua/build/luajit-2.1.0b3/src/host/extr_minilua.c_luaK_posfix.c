
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int info; } ;
struct TYPE_16__ {TYPE_1__ s; } ;
struct TYPE_17__ {TYPE_2__ u; int k; int t; int f; } ;
typedef TYPE_3__ expdesc ;
typedef int FuncState ;
typedef int BinOpr ;


 int GET_OPCODE (int ) ;
 int OP_ADD ;
 int OP_CONCAT ;
 int OP_DIV ;
 int OP_EQ ;
 int OP_LE ;
 int OP_LT ;
 int OP_MOD ;
 int OP_MUL ;
 int OP_POW ;
 int OP_SUB ;
 int SETARG_B (int ,int ) ;
 int VRELOCABLE ;
 int codearith (int *,int ,TYPE_3__*,TYPE_3__*) ;
 int codecomp (int *,int ,int,TYPE_3__*,TYPE_3__*) ;
 int freeexp (int *,TYPE_3__*) ;
 int getcode (int *,TYPE_3__*) ;
 int luaK_concat (int *,int *,int ) ;
 int luaK_dischargevars (int *,TYPE_3__*) ;
 int luaK_exp2nextreg (int *,TYPE_3__*) ;
 int luaK_exp2val (int *,TYPE_3__*) ;

__attribute__((used)) static void luaK_posfix(FuncState*fs,BinOpr op,expdesc*e1,expdesc*e2){
switch(op){
case 141:{
luaK_dischargevars(fs,e2);
luaK_concat(fs,&e2->f,e1->f);
*e1=*e2;
break;
}
case 130:{
luaK_dischargevars(fs,e2);
luaK_concat(fs,&e2->t,e1->t);
*e1=*e2;
break;
}
case 140:{
luaK_exp2val(fs,e2);
if(e2->k==VRELOCABLE&&GET_OPCODE(getcode(fs,e2))==OP_CONCAT){
freeexp(fs,e1);
SETARG_B(getcode(fs,e2),e1->u.s.info);
e1->k=VRELOCABLE;e1->u.s.info=e2->u.s.info;
}
else{
luaK_exp2nextreg(fs,e2);
codearith(fs,OP_CONCAT,e1,e2);
}
break;
}
case 142:codearith(fs,OP_ADD,e1,e2);break;
case 128:codearith(fs,OP_SUB,e1,e2);break;
case 132:codearith(fs,OP_MUL,e1,e2);break;
case 139:codearith(fs,OP_DIV,e1,e2);break;
case 133:codearith(fs,OP_MOD,e1,e2);break;
case 129:codearith(fs,OP_POW,e1,e2);break;
case 138:codecomp(fs,OP_EQ,1,e1,e2);break;
case 131:codecomp(fs,OP_EQ,0,e1,e2);break;
case 134:codecomp(fs,OP_LT,1,e1,e2);break;
case 135:codecomp(fs,OP_LE,1,e1,e2);break;
case 136:codecomp(fs,OP_LT,0,e1,e2);break;
case 137:codecomp(fs,OP_LE,0,e1,e2);break;
default:;
}
}
