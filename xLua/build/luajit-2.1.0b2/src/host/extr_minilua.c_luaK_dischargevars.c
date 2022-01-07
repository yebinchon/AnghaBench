
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* aux; void* info; } ;
struct TYPE_7__ {TYPE_1__ s; } ;
struct TYPE_8__ {int k; TYPE_2__ u; } ;
typedef TYPE_3__ expdesc ;
typedef int FuncState ;


 int OP_GETGLOBAL ;
 int OP_GETTABLE ;
 int OP_GETUPVAL ;




 int VNONRELOC ;
 void* VRELOCABLE ;


 int freereg (int *,void*) ;
 void* luaK_codeABC (int *,int ,int ,void*,void*) ;
 void* luaK_codeABx (int *,int ,int ,void*) ;
 int luaK_setoneret (int *,TYPE_3__*) ;

__attribute__((used)) static void luaK_dischargevars(FuncState*fs,expdesc*e){
switch(e->k){
case 130:{
e->k=VNONRELOC;
break;
}
case 129:{
e->u.s.info=luaK_codeABC(fs,OP_GETUPVAL,0,e->u.s.info,0);
e->k=VRELOCABLE;
break;
}
case 132:{
e->u.s.info=luaK_codeABx(fs,OP_GETGLOBAL,0,e->u.s.info);
e->k=VRELOCABLE;
break;
}
case 131:{
freereg(fs,e->u.s.aux);
freereg(fs,e->u.s.info);
e->u.s.info=luaK_codeABC(fs,OP_GETTABLE,0,e->u.s.info,e->u.s.aux);
e->k=VRELOCABLE;
break;
}
case 128:
case 133:{
luaK_setoneret(fs,e);
break;
}
default:break;
}
}
