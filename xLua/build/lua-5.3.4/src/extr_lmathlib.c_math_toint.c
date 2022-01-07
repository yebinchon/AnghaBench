
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;


 int luaL_checkany (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushnil (int *) ;
 int lua_tointegerx (int *,int,int*) ;

__attribute__((used)) static int math_toint (lua_State *L) {
  int valid;
  lua_Integer n = lua_tointegerx(L, 1, &valid);
  if (valid)
    lua_pushinteger(L, n);
  else {
    luaL_checkany(L, 1);
    lua_pushnil(L);
  }
  return 1;
}
