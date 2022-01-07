
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;
typedef int lua_State ;


 int luaL_error (int *,char*,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushinteger (int *,int ) ;
 int lua_pushlstring (int *,char const*,size_t) ;
 int lua_pushnil (int *) ;
 int unpack_uint32 (size_t const*) ;

__attribute__((used)) static int
unpackmreq_string(lua_State *L, const uint8_t * buf, int sz, int is_push) {
 if (sz < 2) {
  return luaL_error(L, "Invalid cluster message (size=%d)", sz);
 }
 size_t namesz = buf[1];
 if (sz < namesz + 10) {
  return luaL_error(L, "Invalid cluster message (size=%d)", sz);
 }
 lua_pushlstring(L, (const char *)buf+2, namesz);
 uint32_t session = unpack_uint32(buf + namesz + 2);
 uint32_t size = unpack_uint32(buf + namesz + 6);
 lua_pushinteger(L, session);
 lua_pushnil(L);
 lua_pushinteger(L, size);
 lua_pushboolean(L, 1);
 lua_pushboolean(L, is_push);

 return 6;
}
