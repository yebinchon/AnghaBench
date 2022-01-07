
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int lua_getfield (int *,int ,char const*) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_pop (int *,int) ;

int luaT_pushmetatable(lua_State *L, const char *tname)
{
  lua_getfield(L, LUA_REGISTRYINDEX, tname);
  if(lua_isnil(L, -1))
  {
    lua_pop(L, 1);
    return 0;
  }
  return 1;
}
