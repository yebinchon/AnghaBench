
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mc_package {struct mc_package* data; int reference; } ;
typedef int lua_State ;


 int ATOM_DEC (int *) ;
 int luaL_error (int *,char*,int) ;
 struct mc_package* lua_touserdata (int *,int) ;
 int skynet_free (struct mc_package*) ;

__attribute__((used)) static int
mc_closelocal(lua_State *L) {
 struct mc_package *pack = lua_touserdata(L,1);

 int ref = ATOM_DEC(&pack->reference);
 if (ref <= 0) {
  skynet_free(pack->data);
  skynet_free(pack);
  if (ref < 0) {
   return luaL_error(L, "Invalid multicast package reference %d", ref);
  }
 }

 return 0;
}
