
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int CACHE_ON ;
 int LUA_REGISTRYINDEX ;
 int LUA_TNUMBER ;
 int cache_key ;
 int luaL_checkoption (int *,int,char*,char const**) ;
 scalar_t__ lua_isnoneornil (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushstring (int *,char const*) ;
 int lua_rawgetp (int *,int ,int *) ;
 int lua_rawsetp (int *,int ,int *) ;
 int lua_tointeger (int *,int) ;

__attribute__((used)) static int cache_mode(lua_State *L) {
 static const char * lst[] = {
  "OFF",
  "EXIST",
  "ON",
  ((void*)0),
 };
 if (lua_isnoneornil(L,1)) {
  int t = lua_rawgetp(L, LUA_REGISTRYINDEX, &cache_key);
  int r = lua_tointeger(L, -1);
  if (t == LUA_TNUMBER) {
   if (r < 0 || r >= CACHE_ON) {
    r = CACHE_ON;
   }
  } else {
   r = CACHE_ON;
  }
  lua_pushstring(L, lst[r]);
  return 1;
 }
 int t = luaL_checkoption(L, 1, "OFF" , lst);
 lua_pushinteger(L, t);
 lua_rawsetp(L, LUA_REGISTRYINDEX, &cache_key);
 return 0;
}
