
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ LUA_TUSERDATA ;
 int lua_getuservalue (int *,int) ;
 int lua_pushnil (int *) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static int db_getuservalue (lua_State *L) {
  if (lua_type(L, 1) != LUA_TUSERDATA)
    lua_pushnil(L);
  else
    lua_getuservalue(L, 1);
  return 1;
}
