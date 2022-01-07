
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int top; } ;
typedef TYPE_1__ lua_State ;
typedef int TValue ;


 int api_incr_top (TYPE_1__*) ;
 int setobj2s (TYPE_1__*,int ,int const*) ;

void luaA_pushobject (lua_State *L, const TValue *o) {
  setobj2s(L, L->top, o);
  api_incr_top(L);
}
