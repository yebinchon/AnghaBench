
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ LUA_TSTRING ;
 scalar_t__ luaL_optinteger (int *,int,int) ;
 int luaL_where (int *,int) ;
 int lua_concat (int *,int) ;
 int lua_error (int *) ;
 int lua_pushvalue (int *,int) ;
 int lua_settop (int *,int) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static int luaB_error (lua_State *L) {
  int level = (int)luaL_optinteger(L, 2, 1);
  lua_settop(L, 1);
  if (lua_type(L, 1) == LUA_TSTRING && level > 0) {
    luaL_where(L, level);
    lua_pushvalue(L, 1);
    lua_concat(L, 2);
  }
  return lua_error(L);
}
