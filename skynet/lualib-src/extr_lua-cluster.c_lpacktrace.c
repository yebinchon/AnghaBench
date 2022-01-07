
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int lua_State ;


 int TEMP_LENGTH ;
 int fill_header (int *,int*,size_t) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*,int) ;
 int lua_pushlstring (int *,char const*,size_t) ;
 int memcpy (int*,char const*,size_t) ;

__attribute__((used)) static int
lpacktrace(lua_State *L) {
 size_t sz;
 const char * tag = luaL_checklstring(L, 1, &sz);
 if (sz > 0x8000) {
  return luaL_error(L, "trace tag is too long : %d", (int) sz);
 }
 uint8_t buf[TEMP_LENGTH];
 buf[2] = 4;
 fill_header(L, buf, sz+1);
 memcpy(buf+3, tag, sz);
 lua_pushlstring(L, (const char *)buf, sz+3);
 return 1;
}
