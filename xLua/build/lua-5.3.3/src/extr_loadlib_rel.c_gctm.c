
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;


 int lsys_unloadlib (int ) ;
 int luaL_len (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_rawgeti (int *,int,int) ;
 int lua_touserdata (int *,int) ;

__attribute__((used)) static int gctm (lua_State *L) {
  lua_Integer n = luaL_len(L, 1);
  for (; n >= 1; n--) {
    lua_rawgeti(L, 1, n);
    lsys_unloadlib(lua_touserdata(L, -1));
    lua_pop(L, 1);
  }
  return 0;
}
