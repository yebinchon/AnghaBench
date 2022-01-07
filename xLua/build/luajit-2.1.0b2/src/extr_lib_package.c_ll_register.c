
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int luaL_getmetatable (int *,char*) ;
 int lua_gettable (int *,int ) ;
 int lua_isnil (int *,int) ;
 scalar_t__ lua_newuserdata (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushfstring (int *,char*,char const*) ;
 int lua_pushvalue (int *,int) ;
 int lua_setmetatable (int *,int) ;
 int lua_settable (int *,int ) ;
 scalar_t__ lua_touserdata (int *,int) ;

__attribute__((used)) static void **ll_register(lua_State *L, const char *path)
{
  void **plib;
  lua_pushfstring(L, "LOADLIB: %s", path);
  lua_gettable(L, LUA_REGISTRYINDEX);
  if (!lua_isnil(L, -1)) {
    plib = (void **)lua_touserdata(L, -1);
  } else {
    lua_pop(L, 1);
    plib = (void **)lua_newuserdata(L, sizeof(void *));
    *plib = ((void*)0);
    luaL_getmetatable(L, "_LOADLIB");
    lua_setmetatable(L, -2);
    lua_pushfstring(L, "LOADLIB: %s", path);
    lua_pushvalue(L, -2);
    lua_settable(L, LUA_REGISTRYINDEX);
  }
  return plib;
}
