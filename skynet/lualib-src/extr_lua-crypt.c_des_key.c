
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int lua_State ;


 int des_main_ks (int *,void const*) ;
 void* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*,int) ;

__attribute__((used)) static void
des_key(lua_State *L, uint32_t SK[32]) {
 size_t keysz = 0;
 const void * key = luaL_checklstring(L, 1, &keysz);
 if (keysz != 8) {
  luaL_error(L, "Invalid key size %d, need 8 bytes", (int)keysz);
 }
 des_main_ks(SK, key);
}
