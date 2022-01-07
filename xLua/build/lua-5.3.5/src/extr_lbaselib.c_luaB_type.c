
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TNONE ;
 int luaL_argcheck (int *,int,int,char*) ;
 int lua_pushstring (int *,int ) ;
 int lua_type (int *,int) ;
 int lua_typename (int *,int) ;

__attribute__((used)) static int luaB_type (lua_State *L) {
  int t = lua_type(L, 1);
  luaL_argcheck(L, t != LUA_TNONE, 1, "value expected");
  lua_pushstring(L, lua_typename(L, t));
  return 1;
}
