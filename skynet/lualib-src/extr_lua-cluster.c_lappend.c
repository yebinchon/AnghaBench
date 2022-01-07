
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TTABLE ;
 int luaL_checkinteger (int *,int) ;
 int luaL_checktype (int *,int,int ) ;
 int luaL_error (int *,char*) ;
 scalar_t__ lua_isnil (int *,int) ;
 int lua_pushlstring (int *,char const*,int) ;
 int lua_rawlen (int *,int) ;
 int lua_seti (int *,int,int) ;
 int lua_settop (int *,int) ;
 void* lua_touserdata (int *,int) ;
 int skynet_free (void*) ;

__attribute__((used)) static int
lappend(lua_State *L) {
 luaL_checktype(L, 1, LUA_TTABLE);
 int n = lua_rawlen(L, 1);
 if (lua_isnil(L, 2)) {
  lua_settop(L, 3);
  lua_seti(L, 1, n + 1);
  return 0;
 }
 void * buffer = lua_touserdata(L, 2);
 if (buffer == ((void*)0))
  return luaL_error(L, "Need lightuserdata");
 int sz = luaL_checkinteger(L, 3);
 lua_pushlstring(L, (const char *)buffer, sz);
 skynet_free((void *)buffer);
 lua_seti(L, 1, n+1);
 return 0;
}
