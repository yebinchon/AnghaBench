
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*,...) ;
 int lua_gettable (int *,int) ;
 int lua_insert (int *,int) ;
 scalar_t__ lua_isnil (int *,int) ;
 scalar_t__ lua_isstring (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawgeti (int *,int,int) ;
 int lua_settable (int *,int) ;
 int lua_tostring (int *,int) ;
 int testpattern (int *,int) ;

__attribute__((used)) static void getfirstrule (lua_State *L, int arg, int postab) {
  lua_rawgeti(L, arg, 1);
  if (lua_isstring(L, -1)) {
    lua_pushvalue(L, -1);
    lua_gettable(L, arg);
  }
  else {
    lua_pushinteger(L, 1);
    lua_insert(L, -2);
  }
  if (!testpattern(L, -1)) {
    if (lua_isnil(L, -1))
      luaL_error(L, "grammar has no initial rule");
    else
      luaL_error(L, "initial rule '%s' is not a pattern", lua_tostring(L, -2));
  }
  lua_pushvalue(L, -2);
  lua_pushinteger(L, 1);
  lua_settable(L, postab);
}
