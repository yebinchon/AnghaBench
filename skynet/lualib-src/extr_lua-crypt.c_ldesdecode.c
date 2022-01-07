
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int lua_State ;


 int SMALL_CHUNK ;
 int des_crypt (int *,int const*,int*) ;
 int des_key (int *,int *) ;
 scalar_t__ luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*,...) ;
 int* lua_newuserdata (int *,size_t) ;
 int lua_pushlstring (int *,char const*,size_t) ;

__attribute__((used)) static int
ldesdecode(lua_State *L) {
 uint32_t ESK[32];
 des_key(L, ESK);
 uint32_t SK[32];
 int i;
 for( i = 0; i < 32; i += 2 ) {
  SK[i] = ESK[30 - i];
  SK[i + 1] = ESK[31 - i];
 }
 size_t textsz = 0;
 const uint8_t *text = (const uint8_t *)luaL_checklstring(L, 2, &textsz);
 if ((textsz & 7) || textsz == 0) {
  return luaL_error(L, "Invalid des crypt text length %d", (int)textsz);
 }
 uint8_t tmp[SMALL_CHUNK];
 uint8_t *buffer = tmp;
 if (textsz > SMALL_CHUNK) {
  buffer = lua_newuserdata(L, textsz);
 }
 for (i=0;i<textsz;i+=8) {
  des_crypt(SK, text+i, buffer+i);
 }
 int padding = 1;
 for (i=textsz-1;i>=textsz-8;i--) {
  if (buffer[i] == 0) {
   padding++;
  } else if (buffer[i] == 0x80) {
   break;
  } else {
   return luaL_error(L, "Invalid des crypt text");
  }
 }
 if (padding > 8) {
  return luaL_error(L, "Invalid des crypt text");
 }
 lua_pushlstring(L, (const char *)buffer, textsz - padding);
 return 1;
}
