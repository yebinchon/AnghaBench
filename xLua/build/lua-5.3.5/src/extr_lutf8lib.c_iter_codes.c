
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int iter_aux ;
 int luaL_checkstring (int *,int) ;
 int lua_pushcfunction (int *,int ) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushvalue (int *,int) ;

__attribute__((used)) static int iter_codes (lua_State *L) {
  luaL_checkstring(L, 1);
  lua_pushcfunction(L, iter_aux);
  lua_pushvalue(L, 1);
  lua_pushinteger(L, 0);
  return 3;
}
