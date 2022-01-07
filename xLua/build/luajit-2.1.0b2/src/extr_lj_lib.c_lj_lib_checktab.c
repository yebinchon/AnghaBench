
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * top; int * base; } ;
typedef TYPE_1__ lua_State ;
typedef int TValue ;
typedef int GCtab ;


 int LUA_TTABLE ;
 int lj_err_argt (TYPE_1__*,int,int ) ;
 int * tabV (int *) ;
 scalar_t__ tvistab (int *) ;

GCtab *lj_lib_checktab(lua_State *L, int narg)
{
  TValue *o = L->base + narg-1;
  if (!(o < L->top && tvistab(o)))
    lj_err_argt(L, narg, LUA_TTABLE);
  return tabV(o);
}
