
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ LUA_TNUMBER ;
 scalar_t__ LUA_TSTRING ;
 scalar_t__ lua_geti (int *,int,int) ;
 int lua_istable (int *,int) ;
 int lua_pop (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushlightuserdata (int *,char*) ;
 int lua_tointeger (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int memcpy (char*,char const*,size_t) ;
 int skynet_free (char*) ;
 char* skynet_malloc (int) ;

__attribute__((used)) static int
lconcat(lua_State *L) {
 if (!lua_istable(L,1))
  return 0;
 if (lua_geti(L,1,1) != LUA_TNUMBER)
  return 0;
 int sz = lua_tointeger(L,-1);
 lua_pop(L,1);
 char * buff = skynet_malloc(sz);
 int idx = 2;
 int offset = 0;
 while(lua_geti(L,1,idx) == LUA_TSTRING) {
  size_t s;
  const char * str = lua_tolstring(L, -1, &s);
  if (s+offset > sz) {
   skynet_free(buff);
   return 0;
  }
  memcpy(buff+offset, str, s);
  lua_pop(L,1);
  offset += s;
  ++idx;
 }
 if (offset != sz) {
  skynet_free(buff);
  return 0;
 }

 lua_pushlightuserdata(L, buff);
 lua_pushinteger(L, sz);
 return 2;
}
