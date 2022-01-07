
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc_package {scalar_t__ size; struct mc_package* data; } ;
typedef int pack ;
typedef int lua_State ;
typedef int lua_Integer ;


 int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*,int) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushlightuserdata (int *,struct mc_package*) ;
 struct mc_package** lua_touserdata (int *,int) ;

__attribute__((used)) static int
mc_unpacklocal(lua_State *L) {
 struct mc_package ** pack = lua_touserdata(L,1);
 int sz = luaL_checkinteger(L,2);
 if (sz != sizeof(pack)) {
  return luaL_error(L, "Invalid multicast package size %d", sz);
 }
 lua_pushlightuserdata(L, *pack);
 lua_pushlightuserdata(L, (*pack)->data);
 lua_pushinteger(L, (lua_Integer)((*pack)->size));
 return 3;
}
