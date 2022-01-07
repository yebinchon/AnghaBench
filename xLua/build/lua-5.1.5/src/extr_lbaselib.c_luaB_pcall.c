
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_MULTRET ;
 int luaL_checkany (int *,int) ;
 int lua_gettop (int *) ;
 int lua_insert (int *,int) ;
 int lua_pcall (int *,int,int ,int ) ;
 int lua_pushboolean (int *,int) ;

__attribute__((used)) static int luaB_pcall (lua_State *L) {
  int status;
  luaL_checkany(L, 1);
  status = lua_pcall(L, lua_gettop(L) - 1, LUA_MULTRET, 0);
  lua_pushboolean(L, (status == 0));
  lua_insert(L, 1);
  return lua_gettop(L);
}
