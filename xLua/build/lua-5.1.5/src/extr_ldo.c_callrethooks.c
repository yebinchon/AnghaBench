
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_7__ {int hookmask; TYPE_5__* ci; } ;
typedef TYPE_1__ lua_State ;
struct TYPE_8__ {int tailcalls; } ;
typedef int StkId ;


 int LUA_HOOKRET ;
 int LUA_HOOKTAILRET ;
 int LUA_MASKRET ;
 scalar_t__ f_isLua (TYPE_5__*) ;
 int luaD_callhook (TYPE_1__*,int ,int) ;
 int restorestack (TYPE_1__*,int ) ;
 int savestack (TYPE_1__*,int ) ;

__attribute__((used)) static StkId callrethooks (lua_State *L, StkId firstResult) {
  ptrdiff_t fr = savestack(L, firstResult);
  luaD_callhook(L, LUA_HOOKRET, -1);
  if (f_isLua(L->ci)) {
    while ((L->hookmask & LUA_MASKRET) && L->ci->tailcalls--)
      luaD_callhook(L, LUA_HOOKTAILRET, -1);
  }
  return restorestack(L, fr);
}
