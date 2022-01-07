
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int lua_State ;


 int luaL_error (int *,char*,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushinteger (int *,scalar_t__) ;
 int lua_pushlstring (int *,char const*,size_t) ;
 int lua_pushnil (int *) ;
 int return_buffer (int *,char const*,int) ;
 scalar_t__ unpack_uint32 (size_t const*) ;

__attribute__((used)) static int
unpackreq_string(lua_State *L, const uint8_t * buf, int sz) {
 if (sz < 2) {
  return luaL_error(L, "Invalid cluster message (size=%d)", sz);
 }
 size_t namesz = buf[1];
 if (sz < namesz + 6) {
  return luaL_error(L, "Invalid cluster message (size=%d)", sz);
 }
 lua_pushlstring(L, (const char *)buf+2, namesz);
 uint32_t session = unpack_uint32(buf + namesz + 2);
 lua_pushinteger(L, (uint32_t)session);
 return_buffer(L, (const char *)buf+2+namesz+4, sz - namesz - 6);
 if (session == 0) {
  lua_pushnil(L);
  lua_pushboolean(L,1);
  return 6;
 }

 return 4;
}
