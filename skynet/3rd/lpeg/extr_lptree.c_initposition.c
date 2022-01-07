
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ lua_Integer ;


 scalar_t__ luaL_optinteger (int *,int,int) ;

__attribute__((used)) static size_t initposition (lua_State *L, size_t len) {
  lua_Integer ii = luaL_optinteger(L, 3, 1);
  if (ii > 0) {
    if ((size_t)ii <= len)
      return (size_t)ii - 1;
    else return len;
  }
  else {
    if ((size_t)(-ii) <= len)
      return len - ((size_t)(-ii));
    else return 0;
  }
}
