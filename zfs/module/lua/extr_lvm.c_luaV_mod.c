
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ n ;
typedef unsigned int lua_Unsigned ;
typedef int lua_State ;
typedef scalar_t__ lua_Number ;


 int luaG_runerror (int *,char*) ;

__attribute__((used)) static lua_Number luaV_mod (lua_State *L, lua_Number m, lua_Number n) {
  if ((lua_Unsigned)(n) + 1u <= 1u) {
    if (n == 0)
      luaG_runerror(L, "attempt to perform 'n%%0'");
    return 0;
  }
  else {
    lua_Number r = m % n;
    if (r != 0 && (m ^ n) < 0)
      r += n;
    return r;
  }
}
