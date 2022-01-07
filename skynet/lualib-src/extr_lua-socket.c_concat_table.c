
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ LUA_TNIL ;
 int luaL_error (int *,char*) ;
 scalar_t__ lua_geti (int *,int,int) ;
 int lua_pop (int *,int) ;
 char* lua_tolstring (int *,int,size_t*) ;
 int memcpy (char*,char const*,size_t) ;
 int skynet_free (void*) ;

__attribute__((used)) static void
concat_table(lua_State *L, int index, void *buffer, size_t tlen) {
 char *ptr = buffer;
 int i;
 for (i=1;lua_geti(L, index, i) != LUA_TNIL; ++i) {
  size_t len;
  const char * str = lua_tolstring(L, -1, &len);
  if (str == ((void*)0) || tlen < len) {
   break;
  }
  memcpy(ptr, str, len);
  ptr += len;
  tlen -= len;
  lua_pop(L,1);
 }
 if (tlen != 0) {
  skynet_free(buffer);
  luaL_error(L, "Invalid strings table");
 }
 lua_pop(L,1);
}
