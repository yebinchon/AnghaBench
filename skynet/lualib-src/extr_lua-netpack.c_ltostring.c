
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushlstring (int *,char const*,int) ;
 void* lua_touserdata (int *,int) ;
 int skynet_free (void*) ;

__attribute__((used)) static int
ltostring(lua_State *L) {
 void * ptr = lua_touserdata(L, 1);
 int size = luaL_checkinteger(L, 2);
 if (ptr == ((void*)0)) {
  lua_pushliteral(L, "");
 } else {
  lua_pushlstring(L, (const char *)ptr, size);
  skynet_free(ptr);
 }
 return 1;
}
