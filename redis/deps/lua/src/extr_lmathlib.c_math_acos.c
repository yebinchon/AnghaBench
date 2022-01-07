
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int acos (int ) ;
 int luaL_checknumber (int *,int) ;
 int lua_pushnumber (int *,int ) ;

__attribute__((used)) static int math_acos (lua_State *L) {
  lua_pushnumber(L, acos(luaL_checknumber(L, 1)));
  return 1;
}
