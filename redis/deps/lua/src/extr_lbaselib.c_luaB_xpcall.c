
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_MULTRET ;
 int luaL_checkany (int *,int) ;
 int lua_gettop (int *) ;
 int lua_insert (int *,int) ;
 int lua_pcall (int *,int ,int ,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_replace (int *,int) ;
 int lua_settop (int *,int) ;

__attribute__((used)) static int luaB_xpcall (lua_State *L) {
  int status;
  luaL_checkany(L, 2);
  lua_settop(L, 2);
  lua_insert(L, 1);
  status = lua_pcall(L, 0, LUA_MULTRET, 1);
  lua_pushboolean(L, (status == 0));
  lua_replace(L, 1);
  return lua_gettop(L);
}
