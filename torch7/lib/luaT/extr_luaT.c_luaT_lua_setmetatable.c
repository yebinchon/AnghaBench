
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TTABLE ;
 char* luaL_checkstring (int *,int) ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*,char const*) ;
 int luaT_pushmetatable (int *,char const*) ;
 int lua_setmetatable (int *,int) ;

int luaT_lua_setmetatable(lua_State *L)
{
  const char *tname = luaL_checkstring(L, 2);
  luaL_checktype(L, 1, LUA_TTABLE);

  if(!luaT_pushmetatable(L, tname))
    luaL_error(L, "unknown typename %s\n", tname);
  lua_setmetatable(L, 1);

  return 1;
}
