
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ LUA_TTABLE ;
 int TAB_L ;
 int TAB_R ;
 int TAB_W ;
 scalar_t__ checkfield (int *,char*,int) ;
 int luaL_checktype (int *,int,scalar_t__) ;
 scalar_t__ lua_getmetatable (int *,int) ;
 int lua_pop (int *,int) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static void checktab (lua_State *L, int arg, int what) {
  if (lua_type(L, arg) != LUA_TTABLE) {
    int n = 1;
    if (lua_getmetatable(L, arg) &&
        (!(what & TAB_R) || checkfield(L, "__index", ++n)) &&
        (!(what & TAB_W) || checkfield(L, "__newindex", ++n)) &&
        (!(what & TAB_L) || checkfield(L, "__len", ++n))) {
      lua_pop(L, n);
    }
    else
      luaL_checktype(L, arg, LUA_TTABLE);
  }
}
