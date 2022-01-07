
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int lua_State ;
typedef int lua_Integer ;
 int luaL_error (int *,char*,...) ;
 int lua_pushinteger (int *,int const) ;
 int lua_pushlstring (int *,char const*,size_t) ;
 int lua_pushvalue (int *,int ) ;
 int lua_upvalueindex (int) ;

__attribute__((used)) static int
lsubtype(lua_State *L, int subtype, const uint8_t * buf, size_t sz) {
 switch(subtype) {
 case 139:
  lua_pushvalue(L, lua_upvalueindex(6));
  lua_pushlstring(L, (const char *)buf+1, sz-1);
  lua_pushinteger(L, buf[0]);
  return 3;
 case 131: {
  if (sz != 12) {
   return luaL_error(L, "Invalid object id");
  }
  char oid[24];
  int i;
  const uint8_t * id = buf;
  static char *hex = "0123456789abcdef";
  for (i=0;i<12;i++) {
   oid[i*2] = hex[id[i] >> 4];
   oid[i*2+1] = hex[id[i] & 0xf];
  }
  lua_pushvalue(L, lua_upvalueindex(7));
  lua_pushlstring(L, oid, 24);

  return 2;
 }
 case 137: {
  if (sz != 4) {
   return luaL_error(L, "Invalid date");
  }
  int d = *(const int *)buf;
  lua_pushvalue(L, lua_upvalueindex(9));
  lua_pushinteger(L, d);
  return 2;
 }
 case 128: {
  if (sz != 8) {
   return luaL_error(L, "Invalid timestamp");
  }
  const uint32_t * ts = (const uint32_t *)buf;
  lua_pushvalue(L, lua_upvalueindex(8));
  lua_pushinteger(L, (lua_Integer)ts[1]);
  lua_pushinteger(L, (lua_Integer)ts[0]);
  return 3;
 }
 case 130: {
  --sz;
  size_t i;
  const uint8_t *str = buf;
  for (i=0;i<sz;i++) {
   if (str[sz-i-1]==0) {
    break;
   }
  }
  lua_pushvalue(L, lua_upvalueindex(10));
  if (i==sz) {
   return luaL_error(L, "Invalid regex");
  }
  lua_pushlstring(L, (const char *)str, sz - i - 1);
  lua_pushlstring(L, (const char *)str+sz-i, i);
  return 3;
 }
 case 133:
  lua_pushvalue(L, lua_upvalueindex(11));
  return 1;
 case 134:
  lua_pushvalue(L, lua_upvalueindex(12));
  return 1;
 case 132:
  lua_pushvalue(L, lua_upvalueindex(4));
  return 1;
 case 135:
 case 136:
 case 129:
 case 138:
  lua_pushvalue(L, lua_upvalueindex(13));
  lua_pushlstring(L, (const char *)buf, sz);
  return 2;
 default:
  return luaL_error(L, "Invalid subtype %d", subtype);
 }
}
