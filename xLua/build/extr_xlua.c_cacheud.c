
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LUA_REGISTRYINDEX ;
 int lua_pop (int *,int) ;
 int lua_pushvalue (int *,int) ;
 int lua_rawgeti (int *,int ,int) ;
 int lua_rawseti (int *,int,int) ;

__attribute__((used)) static void cacheud(lua_State *L, int key, int cache_ref) {
 lua_rawgeti(L, LUA_REGISTRYINDEX, cache_ref);
 lua_pushvalue(L, -2);
 lua_rawseti(L, -2, key);
 lua_pop(L, 1);
}
