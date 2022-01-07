
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Integer ;


 int INT_MAX ;
 int luaL_argcheck (int *,int,int,char*) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_checkstack (int *,int,char*) ;
 int luaL_error (int *,char*) ;
 int luaL_optinteger (int *,int,int) ;
 int lua_pushinteger (int *,int) ;
 int u_posrelat (int ,size_t) ;
 char* utf8_decode (char const*,int*) ;

__attribute__((used)) static int codepoint (lua_State *L) {
  size_t len;
  const char *s = luaL_checklstring(L, 1, &len);
  lua_Integer posi = u_posrelat(luaL_optinteger(L, 2, 1), len);
  lua_Integer pose = u_posrelat(luaL_optinteger(L, 3, posi), len);
  int n;
  const char *se;
  luaL_argcheck(L, posi >= 1, 2, "out of range");
  luaL_argcheck(L, pose <= (lua_Integer)len, 3, "out of range");
  if (posi > pose) return 0;
  if (pose - posi >= INT_MAX)
    return luaL_error(L, "string slice too long");
  n = (int)(pose - posi) + 1;
  luaL_checkstack(L, n, "string slice too long");
  n = 0;
  se = s + pose;
  for (s += posi - 1; s < se;) {
    int code;
    s = utf8_decode(s, &code);
    if (s == ((void*)0))
      return luaL_error(L, "invalid UTF-8 code");
    lua_pushinteger(L, code);
    n++;
  }
  return n;
}
