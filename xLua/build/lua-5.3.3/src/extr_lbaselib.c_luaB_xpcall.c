
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_MULTRET ;
 int LUA_TFUNCTION ;
 int finishpcall (int *,int,int) ;
 int luaL_checktype (int *,int,int ) ;
 int lua_gettop (int *) ;
 int lua_pcallk (int *,int,int ,int,int,int (*) (int *,int,int)) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_rotate (int *,int,int) ;

__attribute__((used)) static int luaB_xpcall (lua_State *L) {
  int status;
  int n = lua_gettop(L);
  luaL_checktype(L, 2, LUA_TFUNCTION);
  lua_pushboolean(L, 1);
  lua_pushvalue(L, 1);
  lua_rotate(L, 3, 2);
  status = lua_pcallk(L, n - 2, LUA_MULTRET, 2, 2, finishpcall);
  return finishpcall(L, status, 2);
}
