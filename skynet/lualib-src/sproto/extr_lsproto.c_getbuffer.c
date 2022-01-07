
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_TLIGHTUSERDATA ;
 int LUA_TSTRING ;
 int LUA_TUSERDATA ;
 int luaL_argerror (int *,int,char*) ;
 size_t luaL_checkinteger (int *,int) ;
 void* lua_tolstring (int *,int,size_t*) ;
 void* lua_touserdata (int *,int) ;
 int lua_type (int *,int) ;

__attribute__((used)) static const void *
getbuffer(lua_State *L, int index, size_t *sz) {
 const void * buffer = ((void*)0);
 int t = lua_type(L, index);
 if (t == LUA_TSTRING) {
  buffer = lua_tolstring(L, index, sz);
 } else {
  if (t != LUA_TUSERDATA && t != LUA_TLIGHTUSERDATA) {
   luaL_argerror(L, index, "Need a string or userdata");
   return ((void*)0);
  }
  buffer = lua_touserdata(L, index);
  *sz = luaL_checkinteger(L, index+1);
 }
 return buffer;
}
