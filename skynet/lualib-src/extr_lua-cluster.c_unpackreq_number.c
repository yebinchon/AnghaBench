
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int lua_State ;


 int luaL_error (int *,char*,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushinteger (int *,scalar_t__) ;
 int lua_pushnil (int *) ;
 int return_buffer (int *,char const*,int) ;
 scalar_t__ unpack_uint32 (int const*) ;

__attribute__((used)) static int
unpackreq_number(lua_State *L, const uint8_t * buf, int sz) {
 if (sz < 9) {
  return luaL_error(L, "Invalid cluster message (size=%d)", sz);
 }
 uint32_t address = unpack_uint32(buf+1);
 uint32_t session = unpack_uint32(buf+5);
 lua_pushinteger(L, address);
 lua_pushinteger(L, session);

 return_buffer(L, (const char *)buf+9, sz-9);
 if (session == 0) {
  lua_pushnil(L);
  lua_pushboolean(L,1);
  return 6;
 }

 return 4;
}
