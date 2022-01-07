
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int info; } ;
struct TYPE_15__ {TYPE_1__ s; int nval; } ;
struct TYPE_16__ {int k; TYPE_2__ u; } ;
typedef TYPE_3__ expdesc ;
struct TYPE_17__ {int nk; } ;
typedef TYPE_4__ FuncState ;


 int RKASK (int) ;





 int boolK (TYPE_4__*,int) ;
 int luaK_exp2anyreg (TYPE_4__*,TYPE_3__*) ;
 int luaK_exp2val (TYPE_4__*,TYPE_3__*) ;
 int luaK_numberK (TYPE_4__*,int ) ;
 int nilK (TYPE_4__*) ;

__attribute__((used)) static int luaK_exp2RK(FuncState*fs,expdesc*e){
luaK_exp2val(fs,e);
switch(e->k){
case 130:
case 128:
case 132:
case 129:{
if(fs->nk<=((1<<(9-1))-1)){
e->u.s.info=(e->k==129)?nilK(fs):
(e->k==130)?luaK_numberK(fs,e->u.nval):
boolK(fs,(e->k==128));
e->k=131;
return RKASK(e->u.s.info);
}
else break;
}
case 131:{
if(e->u.s.info<=((1<<(9-1))-1))
return RKASK(e->u.s.info);
else break;
}
default:break;
}
return luaK_exp2anyreg(fs,e);
}
