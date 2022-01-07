
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef void* uint32_t ;
typedef int lua_State ;
typedef size_t lua_Integer ;


 char* luaL_checklstring (int *,int,size_t*) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushinteger (int *,size_t) ;
 int lua_pushlstring (int *,char const*,size_t) ;
 void* unpack_uint32 (int const*) ;

__attribute__((used)) static int
lunpackresponse(lua_State *L) {
 size_t sz;
 const char * buf = luaL_checklstring(L, 1, &sz);
 if (sz < 5) {
  return 0;
 }
 uint32_t session = unpack_uint32((const uint8_t *)buf);
 lua_pushinteger(L, (lua_Integer)session);
 switch(buf[4]) {
 case 0:
  lua_pushboolean(L, 0);
  lua_pushlstring(L, buf+5, sz-5);
  return 3;
 case 1:
 case 4:
  lua_pushboolean(L, 1);
  lua_pushlstring(L, buf+5, sz-5);
  return 3;
 case 2:
  if (sz != 9) {
   return 0;
  }
  sz = unpack_uint32((const uint8_t *)buf+5);
  lua_pushboolean(L, 1);
  lua_pushinteger(L, sz);
  lua_pushboolean(L, 1);
  return 4;
 case 3:
  lua_pushboolean(L, 1);
  lua_pushlstring(L, buf+5, sz-5);
  lua_pushboolean(L, 1);
  return 4;
 default:
  return 0;
 }
}
