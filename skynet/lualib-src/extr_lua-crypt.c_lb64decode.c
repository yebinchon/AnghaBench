
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int lua_State ;


 int SMALL_CHUNK ;
 int b64index (int const) ;
 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 char* lua_newuserdata (int *,int) ;
 int lua_pushlstring (int *,char*,int) ;

__attribute__((used)) static int
lb64decode(lua_State *L) {
 size_t sz = 0;
 const uint8_t * text = (const uint8_t *)luaL_checklstring(L, 1, &sz);
 int decode_sz = (sz+3)/4*3;
 char tmp[SMALL_CHUNK];
 char *buffer = tmp;
 if (decode_sz > SMALL_CHUNK) {
  buffer = lua_newuserdata(L, decode_sz);
 }
 int i,j;
 int output = 0;
 for (i=0;i<sz;) {
  int padding = 0;
  int c[4];
  for (j=0;j<4;) {
   if (i>=sz) {
    return luaL_error(L, "Invalid base64 text");
   }
   c[j] = b64index(text[i]);
   if (c[j] == -1) {
    ++i;
    continue;
   }
   if (c[j] == -2) {
    ++padding;
   }
   ++i;
   ++j;
  }
  uint32_t v;
  switch (padding) {
  case 0:
   v = (unsigned)c[0] << 18 | c[1] << 12 | c[2] << 6 | c[3];
   buffer[output] = v >> 16;
   buffer[output+1] = (v >> 8) & 0xff;
   buffer[output+2] = v & 0xff;
   output += 3;
   break;
  case 1:
   if (c[3] != -2 || (c[2] & 3)!=0) {
    return luaL_error(L, "Invalid base64 text");
   }
   v = (unsigned)c[0] << 10 | c[1] << 4 | c[2] >> 2 ;
   buffer[output] = v >> 8;
   buffer[output+1] = v & 0xff;
   output += 2;
   break;
  case 2:
   if (c[3] != -2 || c[2] != -2 || (c[1] & 0xf) !=0) {
    return luaL_error(L, "Invalid base64 text");
   }
   v = (unsigned)c[0] << 2 | c[1] >> 4;
   buffer[output] = v;
   ++ output;
   break;
  default:
   return luaL_error(L, "Invalid base64 text");
  }
 }
 lua_pushlstring(L, buffer, output);
 return 1;
}
