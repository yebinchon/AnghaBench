
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * top; int * base; } ;
typedef TYPE_1__ lua_State ;
typedef int TValue ;


 int LJ_ERR_NOVAL ;
 int lj_err_arg (TYPE_1__*,int,int ) ;

TValue *lj_lib_checkany(lua_State *L, int narg)
{
  TValue *o = L->base + narg-1;
  if (o >= L->top)
    lj_err_arg(L, narg, LJ_ERR_NOVAL);
  return o;
}
