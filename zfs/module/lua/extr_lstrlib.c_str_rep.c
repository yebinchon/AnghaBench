
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int luaL_Buffer ;


 int MAXSIZE ;
 char* luaL_buffinitsize (int *,int *,size_t) ;
 int luaL_checkint (int *,int) ;
 char* luaL_checklstring (int *,int,size_t*) ;
 int luaL_error (int *,char*) ;
 char* luaL_optlstring (int *,int,char*,size_t*) ;
 int luaL_pushresultsize (int *,size_t) ;
 int lua_pushliteral (int *,char*) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static int str_rep (lua_State *L) {
  size_t l, lsep;
  const char *s = luaL_checklstring(L, 1, &l);
  int n = luaL_checkint(L, 2);
  const char *sep = luaL_optlstring(L, 3, "", &lsep);
  if (n <= 0) lua_pushliteral(L, "");
  else if (l + lsep < l || l + lsep >= MAXSIZE / n)
    return luaL_error(L, "resulting string too large");
  else {
    size_t totallen = n * l + (n - 1) * lsep;
    luaL_Buffer b;
    char *p = luaL_buffinitsize(L, &b, totallen);
    while (n-- > 1) {
      memcpy(p, s, l * sizeof(char)); p += l;
      if (lsep > 0) {
        memcpy(p, sep, lsep * sizeof(char)); p += lsep;
      }
    }
    memcpy(p, s, l * sizeof(char));
    luaL_pushresultsize(&b, totallen);
  }
  return 1;
}
