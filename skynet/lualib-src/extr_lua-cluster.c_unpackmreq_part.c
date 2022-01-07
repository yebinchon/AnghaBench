
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int lua_State ;


 int luaL_error (int *,char*) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int return_buffer (int *,char const*,int) ;
 int unpack_uint32 (int const*) ;

__attribute__((used)) static int
unpackmreq_part(lua_State *L, const uint8_t * buf, int sz) {
 if (sz < 5) {
  return luaL_error(L, "Invalid cluster multi part message");
 }
 int padding = (buf[0] == 2);
 uint32_t session = unpack_uint32(buf+1);
 lua_pushboolean(L, 0);
 lua_pushinteger(L, session);
 return_buffer(L, (const char *)buf+5, sz-5);
 lua_pushboolean(L, padding);

 return 5;
}
