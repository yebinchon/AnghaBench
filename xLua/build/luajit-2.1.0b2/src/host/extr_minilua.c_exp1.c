
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int k; } ;
typedef TYPE_1__ expdesc ;
struct TYPE_8__ {int fs; } ;
typedef TYPE_2__ LexState ;


 int expr (TYPE_2__*,TYPE_1__*) ;
 int luaK_exp2nextreg (int ,TYPE_1__*) ;

__attribute__((used)) static int exp1(LexState*ls){
expdesc e;
int k;
expr(ls,&e);
k=e.k;
luaK_exp2nextreg(ls->fs,&e);
return k;
}
