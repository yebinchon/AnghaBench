
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int little_endian (int) ;
 char* luaL_checkstring (int *,int) ;
 int lua_pushinteger (int *,int) ;
 int memcpy (int*,char const*,int) ;

__attribute__((used)) static int
reply_length(lua_State *L) {
 const char * rawlen_str = luaL_checkstring(L, 1);
 int rawlen = 0;
 memcpy(&rawlen, rawlen_str, sizeof(int));
 int length = little_endian(rawlen);
 lua_pushinteger(L, length - 4);
 return 1;
}
