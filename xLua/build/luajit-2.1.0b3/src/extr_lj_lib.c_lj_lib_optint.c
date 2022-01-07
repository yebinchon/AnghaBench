
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * top; int * base; } ;
typedef TYPE_1__ lua_State ;
typedef int int32_t ;
typedef int TValue ;


 int lj_lib_checkint (TYPE_1__*,int) ;
 int tvisnil (int *) ;

int32_t lj_lib_optint(lua_State *L, int narg, int32_t def)
{
  TValue *o = L->base + narg-1;
  return (o < L->top && !tvisnil(o)) ? lj_lib_checkint(L, narg) : def;
}
