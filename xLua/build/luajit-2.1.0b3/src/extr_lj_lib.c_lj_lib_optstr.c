
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * top; int * base; } ;
typedef TYPE_1__ lua_State ;
typedef int TValue ;
typedef int GCstr ;


 int * lj_lib_checkstr (TYPE_1__*,int) ;
 int tvisnil (int *) ;

GCstr *lj_lib_optstr(lua_State *L, int narg)
{
  TValue *o = L->base + narg-1;
  return (o < L->top && !tvisnil(o)) ? lj_lib_checkstr(L, narg) : ((void*)0);
}
