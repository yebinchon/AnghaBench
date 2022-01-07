
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TUSERDATA ;
 int luaL_checkany (int *,int) ;
 int luaL_checktype (int *,int,int ) ;
 int lua_settop (int *,int) ;
 int lua_setuservalue (int *,int) ;

__attribute__((used)) static int db_setuservalue (lua_State *L) {
  luaL_checktype(L, 1, LUA_TUSERDATA);
  luaL_checkany(L, 2);
  lua_settop(L, 2);
  lua_setuservalue(L, 1);
  return 1;
}
