
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * top; int * base; } ;
typedef TYPE_1__ lua_State ;
typedef int lua_Number ;
typedef int TValue ;


 scalar_t__ LJ_UNLIKELY (int ) ;
 int LUA_TNUMBER ;
 int intV (int *) ;
 int lj_err_argt (TYPE_1__*,int,int ) ;
 scalar_t__ lj_strscan_num (int ,int *) ;
 int numV (int *) ;
 int setnumV (int *,int ) ;
 int strV (int *) ;
 int tvisint (int *) ;
 scalar_t__ tvisnumber (int *) ;
 scalar_t__ tvisstr (int *) ;

lua_Number lj_lib_checknum(lua_State *L, int narg)
{
  TValue *o = L->base + narg-1;
  if (!(o < L->top &&
 (tvisnumber(o) || (tvisstr(o) && lj_strscan_num(strV(o), o)))))
    lj_err_argt(L, narg, LUA_TNUMBER);
  if (LJ_UNLIKELY(tvisint(o))) {
    lua_Number n = (lua_Number)intV(o);
    setnumV(o, n);
    return n;
  } else {
    return numV(o);
  }
}
