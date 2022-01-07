
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int l_registry; } ;
typedef TYPE_1__ global_State ;
typedef int Table ;
typedef int TValue ;


 int LUA_RIDX_GLOBALS ;
 int LUA_RIDX_LAST ;
 int LUA_RIDX_MAINTHREAD ;
 int * luaH_new (int *) ;
 int luaH_resize (int *,int *,int ,int ) ;
 int luaH_setint (int *,int *,int ,int *) ;
 int sethvalue (int *,int *,int *) ;
 int setthvalue (int *,int *,int *) ;

__attribute__((used)) static void init_registry (lua_State *L, global_State *g) {
  TValue temp;

  Table *registry = luaH_new(L);
  sethvalue(L, &g->l_registry, registry);
  luaH_resize(L, registry, LUA_RIDX_LAST, 0);

  setthvalue(L, &temp, L);
  luaH_setint(L, registry, LUA_RIDX_MAINTHREAD, &temp);

  sethvalue(L, &temp, luaH_new(L));
  luaH_setint(L, registry, LUA_RIDX_GLOBALS, &temp);
}
