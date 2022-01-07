
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 scalar_t__ LUA_TNIL ;
 char* luaL_checkstring (int *,int) ;
 scalar_t__ lua_getfield (int *,int,char const*) ;
 int lua_pushfstring (int *,char*,char const*) ;

__attribute__((used)) static int searcher_preload (lua_State *L) {
  const char *name = luaL_checkstring(L, 1);
  lua_getfield(L, LUA_REGISTRYINDEX, "_PRELOAD");
  if (lua_getfield(L, -1, name) == LUA_TNIL)
    lua_pushfstring(L, "\n\tno field package.preload['%s']", name);
  return 1;
}
