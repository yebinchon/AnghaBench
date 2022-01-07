
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * top; int * base; } ;
typedef TYPE_1__ lua_State ;
typedef int TValue ;
typedef int GCtab ;


 int LJ_ERR_NOTABN ;
 int lj_err_arg (TYPE_1__*,int,int ) ;
 int * tabV (int *) ;
 scalar_t__ tvisnil (int *) ;
 scalar_t__ tvistab (int *) ;

GCtab *lj_lib_checktabornil(lua_State *L, int narg)
{
  TValue *o = L->base + narg-1;
  if (o < L->top) {
    if (tvistab(o))
      return tabV(o);
    else if (tvisnil(o))
      return ((void*)0);
  }
  lj_err_arg(L, narg, LJ_ERR_NOTABN);
  return ((void*)0);
}
