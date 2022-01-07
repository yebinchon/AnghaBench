
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* luaL_checkstring (int *,int) ;
 scalar_t__ luaT_pushmetatable (int *,char const*) ;
 int lua_pushstring (int *,char*) ;
 int lua_rawget (int *,int) ;

int luaT_lua_getconstructortable(lua_State *L)
{
  const char* tname = luaL_checkstring(L, 1);
  if(luaT_pushmetatable(L, tname))
  {
    lua_pushstring(L, "__constructor");
    lua_rawget(L, -2);
    return 1;
  }
  return 0;
}
