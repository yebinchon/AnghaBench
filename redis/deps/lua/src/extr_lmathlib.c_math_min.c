
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ lua_Number ;


 scalar_t__ luaL_checknumber (int *,int) ;
 int lua_gettop (int *) ;
 int lua_pushnumber (int *,scalar_t__) ;

__attribute__((used)) static int math_min (lua_State *L) {
  int n = lua_gettop(L);
  lua_Number dmin = luaL_checknumber(L, 1);
  int i;
  for (i=2; i<=n; i++) {
    lua_Number d = luaL_checknumber(L, i);
    if (d < dmin)
      dmin = d;
  }
  lua_pushnumber(L, dmin);
  return 1;
}
