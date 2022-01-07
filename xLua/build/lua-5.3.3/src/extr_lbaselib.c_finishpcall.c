
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ lua_KContext ;


 int LUA_OK ;
 int LUA_YIELD ;
 int lua_gettop (int *) ;
 int lua_pushboolean (int *,int ) ;
 int lua_pushvalue (int *,int) ;

__attribute__((used)) static int finishpcall (lua_State *L, int status, lua_KContext extra) {
  if (status != LUA_OK && status != LUA_YIELD) {
    lua_pushboolean(L, 0);
    lua_pushvalue(L, -2);
    return 2;
  }
  else
    return lua_gettop(L) - (int)extra;
}
