
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_ERRSYNTAX ;
 int luaD_throw (int *,int ) ;
 int luaO_pushfstring (int *,char*,char const*,char const*) ;
 int * strchr (char const*,char const) ;

__attribute__((used)) static void checkmode (lua_State *L, const char *mode, const char *x) {
  if (mode && strchr(mode, x[0]) == ((void*)0)) {
    luaO_pushfstring(L,
       "attempt to load a %s chunk (mode is '%s')", x, mode);
    luaD_throw(L, LUA_ERRSYNTAX);
  }
}
