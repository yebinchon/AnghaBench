
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 scalar_t__ luaT_pushmetatable (int *,char const*) ;
 scalar_t__ lua_isstring (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_rawget (int *,int ) ;
 char* lua_tostring (int *,int) ;

const char *luaT_typenameid(lua_State *L, const char *tname)
{
  if(luaT_pushmetatable(L, tname))
  {
    const char *tnameid = ((void*)0);
    lua_rawget(L, LUA_REGISTRYINDEX);
    if(lua_isstring(L, -1))
      tnameid = lua_tostring(L, -1);
    lua_pop(L, 1);
    return tnameid;
  }
  return ((void*)0);
}
