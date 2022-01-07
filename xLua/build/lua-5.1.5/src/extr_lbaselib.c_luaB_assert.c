
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_checkany (int *,int) ;
 int luaL_error (int *,char*,int ) ;
 int luaL_optstring (int *,int,char*) ;
 int lua_gettop (int *) ;
 int lua_toboolean (int *,int) ;

__attribute__((used)) static int luaB_assert (lua_State *L) {
  luaL_checkany(L, 1);
  if (!lua_toboolean(L, 1))
    return luaL_error(L, "%s", luaL_optstring(L, 2, "assertion failed!"));
  return lua_gettop(L);
}
