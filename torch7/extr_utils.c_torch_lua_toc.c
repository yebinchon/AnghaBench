
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ lua_Number ;


 scalar_t__ luaL_checknumber (int *,int) ;
 int lua_pushnumber (int *,scalar_t__) ;
 double real_time () ;

__attribute__((used)) static int torch_lua_toc(lua_State* L)
{
  double toctime = real_time();
  lua_Number tictime = luaL_checknumber(L,1);
  lua_pushnumber(L,toctime-tictime);
  return 1;
}
