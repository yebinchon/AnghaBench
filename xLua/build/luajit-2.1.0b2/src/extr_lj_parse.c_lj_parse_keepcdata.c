
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_5__ {TYPE_1__* fs; int * L; } ;
struct TYPE_4__ {int kt; } ;
typedef int TValue ;
typedef TYPE_2__ LexState ;
typedef int GCcdata ;


 int lj_tab_set (int *,int ,int *) ;
 int setboolV (int ,int) ;
 int setcdataV (int *,int *,int *) ;

void lj_parse_keepcdata(LexState *ls, TValue *tv, GCcdata *cd)
{

  lua_State *L = ls->L;
  setcdataV(L, tv, cd);
  setboolV(lj_tab_set(L, ls->fs->kt, tv), 1);
}
