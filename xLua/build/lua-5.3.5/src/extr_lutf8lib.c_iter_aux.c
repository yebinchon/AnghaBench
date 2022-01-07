
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ lua_Integer ;


 scalar_t__ iscont (char const*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 int lua_pushinteger (int *,int) ;
 scalar_t__ lua_tointeger (int *,int) ;
 char* utf8_decode (char const*,int*) ;

__attribute__((used)) static int iter_aux (lua_State *L) {
  size_t len;
  const char *s = luaL_checklstring(L, 1, &len);
  lua_Integer n = lua_tointeger(L, 2) - 1;
  if (n < 0)
    n = 0;
  else if (n < (lua_Integer)len) {
    n++;
    while (iscont(s + n)) n++;
  }
  if (n >= (lua_Integer)len)
    return 0;
  else {
    int code;
    const char *next = utf8_decode(s + n, &code);
    if (next == ((void*)0) || iscont(next))
      return luaL_error(L, "invalid UTF-8 code");
    lua_pushinteger(L, n + 1);
    lua_pushinteger(L, code);
    return 2;
  }
}
