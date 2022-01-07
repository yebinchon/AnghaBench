
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int CACHE_ON ;
 int LUA_REGISTRYINDEX ;
 int LUA_TNUMBER ;
 int cache_key ;
 int lua_pop (int *,int) ;
 int lua_rawgetp (int *,int ,int *) ;
 int lua_tointeger (int *,int) ;

__attribute__((used)) static int cache_level(lua_State *L) {
 int t = lua_rawgetp(L, LUA_REGISTRYINDEX, &cache_key);
 int r = lua_tointeger(L, -1);
 lua_pop(L,1);
 if (t == LUA_TNUMBER) {
  return r;
 }
 return CACHE_ON;
}
