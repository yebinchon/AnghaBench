
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ LUA_TLIGHTUSERDATA ;
 scalar_t__ LUA_TSTRING ;
 int luaL_argerror (int *,int,char const*) ;
 scalar_t__ luaL_getmetafield (int *,int,char*) ;
 char* luaL_typename (int *,int) ;
 char* lua_pushfstring (int *,char*,char const*,char const*) ;
 char* lua_tostring (int *,int) ;
 scalar_t__ lua_type (int *,int) ;

__attribute__((used)) static int typeerror (lua_State *L, int arg, const char *tname) {
  const char *msg;
  const char *typearg;
  if (luaL_getmetafield(L, arg, "__name") == LUA_TSTRING)
    typearg = lua_tostring(L, -1);
  else if (lua_type(L, arg) == LUA_TLIGHTUSERDATA)
    typearg = "light userdata";
  else
    typearg = luaL_typename(L, arg);
  msg = lua_pushfstring(L, "%s expected, got %s", tname, typearg);
  return luaL_argerror(L, arg, msg);
}
