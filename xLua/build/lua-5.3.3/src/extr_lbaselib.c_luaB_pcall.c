
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_MULTRET ;
 int finishpcall (int *,int,int ) ;
 int luaL_checkany (int *,int) ;
 scalar_t__ lua_gettop (int *) ;
 int lua_insert (int *,int) ;
 int lua_pcallk (int *,scalar_t__,int ,int ,int ,int (*) (int *,int,int )) ;
 int lua_pushboolean (int *,int) ;

__attribute__((used)) static int luaB_pcall (lua_State *L) {
  int status;
  luaL_checkany(L, 1);
  lua_pushboolean(L, 1);
  lua_insert(L, 1);
  status = lua_pcallk(L, lua_gettop(L) - 2, LUA_MULTRET, 0, 0, finishpcall);
  return finishpcall(L, status, 0);
}
