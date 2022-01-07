
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ n ;
typedef unsigned int lua_Unsigned ;
typedef int lua_State ;
typedef int lua_Number ;


 int luaG_runerror (int *,char*) ;

__attribute__((used)) static lua_Number luaV_div (lua_State *L, lua_Number m, lua_Number n) {
  if ((lua_Unsigned)(n) + 1u <= 1u) {
    if (n == 0)
      luaG_runerror(L, "attempt to divide by zero");
    return (0 - m);
  }
  else {
    lua_Number q = m / n;
    if ((m ^ n) < 0 && m % n != 0)
      q -= 1;
    return q;
  }
}
