
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TBOOLEAN ;
 int luaT_typerror (int *,int,int ) ;
 int lua_isboolean (int *,int) ;
 int lua_toboolean (int *,int) ;
 int lua_typename (int *,int ) ;

int luaT_checkboolean(lua_State *L, int ud)
{
  if(!lua_isboolean(L, ud))
    luaT_typerror(L, ud, lua_typename(L, LUA_TBOOLEAN));
  return lua_toboolean(L, ud);
}
