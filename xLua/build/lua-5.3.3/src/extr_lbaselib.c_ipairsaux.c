
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ lua_Integer ;


 scalar_t__ LUA_TNIL ;
 scalar_t__ luaL_checkinteger (int *,int) ;
 scalar_t__ lua_geti (int *,int,scalar_t__) ;
 int lua_pushinteger (int *,scalar_t__) ;

__attribute__((used)) static int ipairsaux (lua_State *L) {
  lua_Integer i = luaL_checkinteger(L, 2) + 1;
  lua_pushinteger(L, i);
  return (lua_geti(L, 1, i) == LUA_TNIL) ? 1 : 2;
}
