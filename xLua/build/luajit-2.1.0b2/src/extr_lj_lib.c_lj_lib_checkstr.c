
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * top; int * base; } ;
typedef TYPE_1__ lua_State ;
typedef int TValue ;
typedef int GCstr ;


 scalar_t__ LJ_LIKELY (int ) ;
 int LUA_TSTRING ;
 int lj_err_argt (TYPE_1__*,int,int ) ;
 int * lj_strfmt_number (TYPE_1__*,int *) ;
 int setstrV (TYPE_1__*,int *,int *) ;
 int * strV (int *) ;
 scalar_t__ tvisnumber (int *) ;
 int tvisstr (int *) ;

GCstr *lj_lib_checkstr(lua_State *L, int narg)
{
  TValue *o = L->base + narg-1;
  if (o < L->top) {
    if (LJ_LIKELY(tvisstr(o))) {
      return strV(o);
    } else if (tvisnumber(o)) {
      GCstr *s = lj_strfmt_number(L, o);
      setstrV(L, o, s);
      return s;
    }
  }
  lj_err_argt(L, narg, LUA_TSTRING);
  return ((void*)0);
}
