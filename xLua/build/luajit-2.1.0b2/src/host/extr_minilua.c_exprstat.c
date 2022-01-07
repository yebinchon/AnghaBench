
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ k; } ;
struct LHS_assign {int * prev; TYPE_3__ v; } ;
struct TYPE_7__ {int * fs; } ;
typedef TYPE_1__ LexState ;
typedef int FuncState ;


 int SETARG_C (int ,int) ;
 scalar_t__ VCALL ;
 int assignment (TYPE_1__*,struct LHS_assign*,int) ;
 int getcode (int *,TYPE_3__*) ;
 int primaryexp (TYPE_1__*,TYPE_3__*) ;

__attribute__((used)) static void exprstat(LexState*ls){
FuncState*fs=ls->fs;
struct LHS_assign v;
primaryexp(ls,&v.v);
if(v.v.k==VCALL)
SETARG_C(getcode(fs,&v.v),1);
else{
v.prev=((void*)0);
assignment(ls,&v,1);
}
}
