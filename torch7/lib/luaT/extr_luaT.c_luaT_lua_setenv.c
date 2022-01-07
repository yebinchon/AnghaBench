
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TTABLE ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_typerror (int *,int,char*) ;
 int lua_isfunction (int *,int) ;
 int lua_isuserdata (int *,int) ;
 int lua_setuservalue (int *,int) ;

int luaT_lua_setenv(lua_State *L)
{
  if(!lua_isfunction(L, 1) && !lua_isuserdata(L, 1))
    luaL_typerror(L, 1, "function or userdata");
  luaL_checktype(L, 2, LUA_TTABLE);
  lua_setuservalue(L, 1);
  return 0;
}
