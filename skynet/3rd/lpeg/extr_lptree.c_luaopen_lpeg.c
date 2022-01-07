
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int MAXBACK ;
 char* MAXSTACKIDX ;
 int PATTERN_T ;
 int luaL_newlib (int *,int ) ;
 int luaL_newmetatable (int *,int ) ;
 int luaL_setfuncs (int *,int ,int ) ;
 int lua_pushnumber (int *,int ) ;
 int lua_pushvalue (int *,int) ;
 int lua_setfield (int *,int,char*) ;
 int metareg ;
 int pattreg ;

int luaopen_lpeg (lua_State *L) {
  luaL_newmetatable(L, PATTERN_T);
  lua_pushnumber(L, MAXBACK);
  lua_setfield(L, LUA_REGISTRYINDEX, MAXSTACKIDX);
  luaL_setfuncs(L, metareg, 0);
  luaL_newlib(L, pattreg);
  lua_pushvalue(L, -1);
  lua_setfield(L, -3, "__index");
  return 1;
}
