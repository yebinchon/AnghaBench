
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ lua_Integer ;


 unsigned int l_castS2U (scalar_t__) ;
 int luaG_runerror (int *,char*) ;

lua_Integer luaV_mod (lua_State *L, lua_Integer m, lua_Integer n) {
  if (l_castS2U(n) + 1u <= 1u) {
    if (n == 0)
      luaG_runerror(L, "attempt to perform 'n%%0'");
    return 0;
  }
  else {
    lua_Integer r = m % n;
    if (r != 0 && (m ^ n) < 0)
      r += n;
    return r;
  }
}
