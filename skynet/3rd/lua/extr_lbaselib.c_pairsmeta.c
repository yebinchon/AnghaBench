
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_CFunction ;


 scalar_t__ LUA_TNIL ;
 int luaL_checkany (int *,int) ;
 scalar_t__ luaL_getmetafield (int *,int,char const*) ;
 int lua_call (int *,int,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushnil (int *) ;
 int lua_pushvalue (int *,int) ;

__attribute__((used)) static int pairsmeta (lua_State *L, const char *method, int iszero,
                      lua_CFunction iter) {
  luaL_checkany(L, 1);
  if (luaL_getmetafield(L, 1, method) == LUA_TNIL) {
    lua_pushcfunction(L, iter);
    lua_pushvalue(L, 1);
    if (iszero) lua_pushinteger(L, 0);
    else lua_pushnil(L);
  }
  else {
    lua_pushvalue(L, 1);
    lua_call(L, 1, 3);
  }
  return 3;
}
