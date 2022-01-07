
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;


 int SMALL_CHUNK ;
 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 char* lua_newuserdata (int *,size_t) ;
 int lua_pushlstring (int *,char*,size_t) ;

__attribute__((used)) static int
ltohex(lua_State *L) {
 static char hex[] = "0123456789abcdef";
 size_t sz = 0;
 const uint8_t * text = (const uint8_t *)luaL_checklstring(L, 1, &sz);
 char tmp[SMALL_CHUNK];
 char *buffer = tmp;
 if (sz > SMALL_CHUNK/2) {
  buffer = lua_newuserdata(L, sz * 2);
 }
 int i;
 for (i=0;i<sz;i++) {
  buffer[i*2] = hex[text[i] >> 4];
  buffer[i*2+1] = hex[text[i] & 0xf];
 }
 lua_pushlstring(L, buffer, sz * 2);
 return 1;
}
