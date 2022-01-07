
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int lua_State ;


 int luaL_error (int *,char*,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushnil (int *) ;
 int unpack_uint32 (int const*) ;

__attribute__((used)) static int
unpackmreq_number(lua_State *L, const uint8_t * buf, int sz, int is_push) {
 if (sz != 13) {
  return luaL_error(L, "Invalid cluster message size %d (multi req must be 13)", sz);
 }
 uint32_t address = unpack_uint32(buf+1);
 uint32_t session = unpack_uint32(buf+5);
 uint32_t size = unpack_uint32(buf+9);
 lua_pushinteger(L, address);
 lua_pushinteger(L, session);
 lua_pushnil(L);
 lua_pushinteger(L, size);
 lua_pushboolean(L, 1);
 lua_pushboolean(L, is_push);

 return 6;
}
