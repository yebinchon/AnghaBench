
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ LUA_TTABLE ;
 int luaL_checkstack (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 scalar_t__ luaL_len (int *,int) ;
 scalar_t__ lua_getglobal (int *,char*) ;
 int lua_rawgeti (int *,int,int) ;
 int lua_remove (int *,int) ;

__attribute__((used)) static int pushargs (lua_State *L) {
  int i, n;
  if (lua_getglobal(L, "arg") != LUA_TTABLE)
    luaL_error(L, "'arg' is not a table");
  n = (int)luaL_len(L, -1);
  luaL_checkstack(L, n + 3, "too many arguments to script");
  for (i = 1; i <= n; i++)
    lua_rawgeti(L, -i, i);
  lua_remove(L, -i);
  return n;
}
