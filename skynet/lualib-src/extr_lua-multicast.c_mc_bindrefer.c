
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc_package {int reference; } ;
typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_pushlightuserdata (int *,struct mc_package*) ;
 struct mc_package** lua_touserdata (int *,int) ;
 int skynet_free (struct mc_package**) ;

__attribute__((used)) static int
mc_bindrefer(lua_State *L) {
 struct mc_package ** pack = lua_touserdata(L,1);
 int ref = luaL_checkinteger(L,2);
 if ((*pack)->reference != 0) {
  return luaL_error(L, "Can't bind a multicast package more than once");
 }
 (*pack)->reference = ref;

 lua_pushlightuserdata(L, *pack);

 skynet_free(pack);

 return 1;
}
