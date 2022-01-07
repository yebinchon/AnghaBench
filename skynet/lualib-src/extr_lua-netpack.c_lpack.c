
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;


 int luaL_error (int *,char*,int) ;
 int lua_pushinteger (int *,size_t) ;
 int lua_pushlightuserdata (int *,int *) ;
 int memcpy (int *,char const*,size_t) ;
 int * skynet_malloc (size_t) ;
 char* tolstring (int *,size_t*,int) ;
 int write_size (int *,size_t) ;

__attribute__((used)) static int
lpack(lua_State *L) {
 size_t len;
 const char * ptr = tolstring(L, &len, 1);
 if (len >= 0x10000) {
  return luaL_error(L, "Invalid size (too long) of data : %d", (int)len);
 }

 uint8_t * buffer = skynet_malloc(len + 2);
 write_size(buffer, len);
 memcpy(buffer+2, ptr, len);

 lua_pushlightuserdata(L, buffer);
 lua_pushinteger(L, len + 2);

 return 2;
}
