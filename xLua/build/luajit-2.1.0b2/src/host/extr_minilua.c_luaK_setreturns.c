
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ k; } ;
typedef TYPE_1__ expdesc ;
struct TYPE_9__ {int freereg; } ;
typedef TYPE_2__ FuncState ;


 int SETARG_A (int ,int ) ;
 int SETARG_B (int ,int) ;
 int SETARG_C (int ,int) ;
 scalar_t__ VCALL ;
 scalar_t__ VVARARG ;
 int getcode (TYPE_2__*,TYPE_1__*) ;
 int luaK_reserveregs (TYPE_2__*,int) ;

__attribute__((used)) static void luaK_setreturns(FuncState*fs,expdesc*e,int nresults){
if(e->k==VCALL){
SETARG_C(getcode(fs,e),nresults+1);
}
else if(e->k==VVARARG){
SETARG_B(getcode(fs,e),nresults+1);
SETARG_A(getcode(fs,e),fs->freereg);
luaK_reserveregs(fs,1);
}
}
