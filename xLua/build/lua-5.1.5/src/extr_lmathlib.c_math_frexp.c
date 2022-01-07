
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int frexp (int ,int*) ;
 int luaL_checknumber (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushnumber (int *,int ) ;

__attribute__((used)) static int math_frexp (lua_State *L) {
  int e;
  lua_pushnumber(L, frexp(luaL_checknumber(L, 1), &e));
  lua_pushinteger(L, e);
  return 2;
}
