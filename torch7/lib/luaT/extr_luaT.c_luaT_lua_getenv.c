
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_typerror (int *,int,char*) ;
 int lua_getuservalue (int *,int) ;
 int lua_isfunction (int *,int) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_isuserdata (int *,int) ;
 int lua_newtable (int *) ;

int luaT_lua_getenv(lua_State *L)
{
  if(!lua_isfunction(L, 1) && !lua_isuserdata(L, 1))
    luaL_typerror(L, 1, "function or userdata");
  lua_getuservalue(L, 1);
  if (lua_isnil(L, -1))
    lua_newtable(L);
  return 1;
}
