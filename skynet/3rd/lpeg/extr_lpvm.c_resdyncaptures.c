
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;


 int luaL_error (int *,char*) ;
 scalar_t__ lua_isboolean (int *,int) ;
 int lua_remove (int *,int) ;
 int lua_settop (int *,int) ;
 int lua_toboolean (int *,int) ;
 int lua_tointeger (int *,int) ;

__attribute__((used)) static int resdyncaptures (lua_State *L, int fr, int curr, int limit) {
  lua_Integer res;
  if (!lua_toboolean(L, fr)) {
    lua_settop(L, fr - 1);
    return -1;
  }
  else if (lua_isboolean(L, fr))
    res = curr;
  else {
    res = lua_tointeger(L, fr) - 1;
    if (res < curr || res > limit)
      luaL_error(L, "invalid position returned by match-time capture");
  }
  lua_remove(L, fr);
  return res;
}
