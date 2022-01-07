
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;


 scalar_t__ LUA_TLIGHTUSERDATA ;
 int luaL_checkinteger (int *,int) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*,char const) ;
 scalar_t__ lua_touserdata (int *,int) ;
 scalar_t__ lua_type (int *,int) ;
 int unpackmreq_number (int *,int const*,int,int) ;
 int unpackmreq_part (int *,int const*,int) ;
 int unpackmreq_string (int *,int const*,int,int) ;
 int unpackreq_number (int *,int const*,int) ;
 int unpackreq_string (int *,int const*,int) ;
 int unpacktrace (int *,char const*,int) ;

__attribute__((used)) static int
lunpackrequest(lua_State *L) {
 int sz;
 const char *msg;
 if (lua_type(L, 1) == LUA_TLIGHTUSERDATA) {
  msg = (const char *)lua_touserdata(L, 1);
  sz = luaL_checkinteger(L, 2);
 } else {
  size_t ssz;
  msg = luaL_checklstring(L,1,&ssz);
  sz = (int)ssz;
 }
 switch (msg[0]) {
 case 0:
  return unpackreq_number(L, (const uint8_t *)msg, sz);
 case 1:
  return unpackmreq_number(L, (const uint8_t *)msg, sz, 0);
 case '\x41':
  return unpackmreq_number(L, (const uint8_t *)msg, sz, 1);
 case 2:
 case 3:
  return unpackmreq_part(L, (const uint8_t *)msg, sz);
 case 4:
  return unpacktrace(L, msg, sz);
 case '\x80':
  return unpackreq_string(L, (const uint8_t *)msg, sz);
 case '\x81':
  return unpackmreq_string(L, (const uint8_t *)msg, sz, 0 );
 case '\xc1':
  return unpackmreq_string(L, (const uint8_t *)msg, sz, 1 );
 default:
  return luaL_error(L, "Invalid req package type %d", msg[0]);
 }
}
