
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * top; int * base; } ;
typedef TYPE_1__ lua_State ;
typedef int int32_t ;
typedef int TValue ;


 scalar_t__ LJ_DUALNUM ;
 scalar_t__ LJ_LIKELY (int ) ;
 int LUA_TNUMBER ;
 int intV (int *) ;
 int lj_err_argt (TYPE_1__*,int,int ) ;
 int lj_num2int (int ) ;
 scalar_t__ lj_strscan_numberobj (int *) ;
 int numV (int *) ;
 int setintV (int *,int ) ;
 int tvisint (int *) ;

int32_t lj_lib_checkint(lua_State *L, int narg)
{
  TValue *o = L->base + narg-1;
  if (!(o < L->top && lj_strscan_numberobj(o)))
    lj_err_argt(L, narg, LUA_TNUMBER);
  if (LJ_LIKELY(tvisint(o))) {
    return intV(o);
  } else {
    int32_t i = lj_num2int(numV(o));
    if (LJ_DUALNUM) setintV(o, i);
    return i;
  }
}
