
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ k; } ;
typedef TYPE_1__ expdesc ;
struct TYPE_14__ {int freereg; } ;
struct TYPE_13__ {TYPE_3__* fs; } ;
typedef TYPE_2__ LexState ;
typedef TYPE_3__ FuncState ;


 scalar_t__ VVOID ;
 scalar_t__ hasmultret (scalar_t__) ;
 int luaK_exp2nextreg (TYPE_3__*,TYPE_1__*) ;
 int luaK_nil (TYPE_3__*,int,int) ;
 int luaK_reserveregs (TYPE_3__*,int) ;
 int luaK_setreturns (TYPE_3__*,TYPE_1__*,int) ;

__attribute__((used)) static void adjust_assign(LexState*ls,int nvars,int nexps,expdesc*e){
FuncState*fs=ls->fs;
int extra=nvars-nexps;
if(hasmultret(e->k)){
extra++;
if(extra<0)extra=0;
luaK_setreturns(fs,e,extra);
if(extra>1)luaK_reserveregs(fs,extra-1);
}
else{
if(e->k!=VVOID)luaK_exp2nextreg(fs,e);
if(extra>0){
int reg=fs->freereg;
luaK_reserveregs(fs,extra);
luaK_nil(fs,reg,extra);
}
}
}
