
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 char* luaL_checkstring (int *,int) ;
 scalar_t__ luaT_pushmetatable (int *,char const*) ;
 int lua_isnil (int *,int) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,char*) ;
 int lua_rawget (int *,int) ;

int luaT_lua_factory(lua_State *L)
{
  const char* tname = luaL_checkstring(L, 1);
  if(luaT_pushmetatable(L, tname) && !lua_isnil(L, -1))
  {
    lua_pushstring(L, "__factory");
    lua_rawget(L, -2);
  }
  else
  {
    lua_pushnil(L);
  }
  return 1;
}
