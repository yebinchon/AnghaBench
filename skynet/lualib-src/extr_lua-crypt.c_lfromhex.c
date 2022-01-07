
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;


 int HEX (int,char const) ;
 int SMALL_CHUNK ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*,...) ;
 char* lua_newuserdata (int *,size_t) ;
 int lua_pushlstring (int *,char*,int) ;

__attribute__((used)) static int
lfromhex(lua_State *L) {
 size_t sz = 0;
 const char * text = luaL_checklstring(L, 1, &sz);
 if (sz & 1) {
  return luaL_error(L, "Invalid hex text size %d", (int)sz);
 }
 char tmp[SMALL_CHUNK];
 char *buffer = tmp;
 if (sz > SMALL_CHUNK*2) {
  buffer = lua_newuserdata(L, sz / 2);
 }
 int i;
 for (i=0;i<sz;i+=2) {
  uint8_t hi,low;
  HEX(hi, text[i]);
  HEX(low, text[i+1]);
  if (hi > 16 || low > 16) {
   return luaL_error(L, "Invalid hex text", text);
  }
  buffer[i/2] = hi<<4 | low;
 }
 lua_pushlstring(L, buffer, i/2);
 return 1;
}
