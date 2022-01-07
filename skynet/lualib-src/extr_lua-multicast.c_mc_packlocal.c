
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int lua_State ;


 int luaL_checkinteger (int *,int) ;
 int luaL_error (int *,char*) ;
 void* lua_touserdata (int *,int) ;
 int pack (int *,void*,size_t) ;

__attribute__((used)) static int
mc_packlocal(lua_State *L) {
 void * data = lua_touserdata(L, 1);
 size_t size = (size_t)luaL_checkinteger(L, 2);
 if (size != (uint32_t)size) {
  return luaL_error(L, "Size should be 32bit integer");
 }
 return pack(L, data, size);
}
