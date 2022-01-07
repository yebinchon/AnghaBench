
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int USHRT_MAX ;
 int luaL_error (int *,char*) ;
 int lua_getuservalue (int *,int) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawlen (int *,int) ;
 int lua_rawseti (int *,int,int) ;

__attribute__((used)) static int addtoktable (lua_State *L, int idx) {
  if (lua_isnil(L, idx))
    return 0;
  else {
    int n;
    lua_getuservalue(L, -1);
    n = lua_rawlen(L, -1);
    if (n >= USHRT_MAX)
      luaL_error(L, "too many Lua values in pattern");
    lua_pushvalue(L, idx);
    lua_rawseti(L, -2, ++n);
    lua_pop(L, 1);
    return n;
  }
}
