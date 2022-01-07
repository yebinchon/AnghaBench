
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int info; } ;
struct TYPE_8__ {TYPE_1__ s; } ;
struct TYPE_9__ {scalar_t__ k; int t; int f; TYPE_2__ u; } ;
typedef TYPE_3__ expdesc ;
typedef int FuncState ;


 scalar_t__ VJMP ;
 scalar_t__ VNONRELOC ;
 int code_label (int *,int,int,int) ;
 int discharge2reg (int *,TYPE_3__*,int) ;
 scalar_t__ hasjumps (TYPE_3__*) ;
 int luaK_concat (int *,int*,int) ;
 int luaK_getlabel (int *) ;
 int luaK_jump (int *) ;
 int luaK_patchtohere (int *,int) ;
 scalar_t__ need_value (int *,int) ;
 int patchlistaux (int *,int,int,int,int) ;

__attribute__((used)) static void exp2reg(FuncState*fs,expdesc*e,int reg){
discharge2reg(fs,e,reg);
if(e->k==VJMP)
luaK_concat(fs,&e->t,e->u.s.info);
if(hasjumps(e)){
int final;
int p_f=(-1);
int p_t=(-1);
if(need_value(fs,e->t)||need_value(fs,e->f)){
int fj=(e->k==VJMP)?(-1):luaK_jump(fs);
p_f=code_label(fs,reg,0,1);
p_t=code_label(fs,reg,1,0);
luaK_patchtohere(fs,fj);
}
final=luaK_getlabel(fs);
patchlistaux(fs,e->f,final,reg,p_f);
patchlistaux(fs,e->t,final,reg,p_t);
}
e->f=e->t=(-1);
e->u.s.info=reg;
e->k=VNONRELOC;
}
