
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ LUA_TSTRING ;
 scalar_t__ luaL_callmeta (int *,int,char*) ;
 int luaL_traceback (int *,int *,char const*,int) ;
 int luaL_typename (int *,int) ;
 char* lua_pushfstring (int *,char*,int ) ;
 char* lua_tostring (int *,int) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static int msghandler (lua_State *L) {
  const char *msg = lua_tostring(L, 1);
  if (msg == ((void*)0)) {
    if (luaL_callmeta(L, 1, "__tostring") &&
        lua_type(L, -1) == LUA_TSTRING)
      return 1;
    else
      msg = lua_pushfstring(L, "(error object is a %s value)",
                               luaL_typename(L, 1));
  }
  luaL_traceback(L, L, msg, 1);
  return 1;
}
