
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int PATTERN_T ;
 int luaL_getmetatable (int *,int ) ;
 scalar_t__ lua_getmetatable (int *,int) ;
 int lua_pop (int *,int) ;
 scalar_t__ lua_rawequal (int *,int,int) ;
 scalar_t__ lua_touserdata (int *,int) ;

__attribute__((used)) static int testpattern (lua_State *L, int idx) {
  if (lua_touserdata(L, idx)) {
    if (lua_getmetatable(L, idx)) {
      luaL_getmetatable(L, PATTERN_T);
      if (lua_rawequal(L, -1, -2)) {
        lua_pop(L, 2);
        return 1;
      }
    }
  }
  return 0;
}
