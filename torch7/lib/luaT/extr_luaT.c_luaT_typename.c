
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 char const* luaT_cdataname (int *,int,int *) ;
 scalar_t__ luaT_iscdata (int *,int) ;
 scalar_t__ lua_getmetatable (int *,int) ;
 scalar_t__ lua_isstring (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_rawget (int *,int ) ;
 char* lua_tostring (int *,int) ;

const char* luaT_typename(lua_State *L, int ud)
{
  if(luaT_iscdata(L, ud))
    return luaT_cdataname(L, ud, ((void*)0));
  else if(lua_getmetatable(L, ud))
  {
    const char *tname = ((void*)0);
    lua_rawget(L, LUA_REGISTRYINDEX);
    if(lua_isstring(L, -1))
      tname = lua_tostring(L, -1);
    lua_pop(L, 1);
    return tname;
  }
  return ((void*)0);
}
