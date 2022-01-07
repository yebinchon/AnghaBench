
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int USHRT_MAX ;
 int ktablelen (int *,int) ;
 int luaL_error (int *,char*) ;
 int lua_rawgeti (int *,int,int) ;
 int lua_rawseti (int *,int,int) ;

__attribute__((used)) static int concattable (lua_State *L, int idx1, int idx2) {
  int i;
  int n1 = ktablelen(L, idx1);
  int n2 = ktablelen(L, idx2);
  if (n1 + n2 > USHRT_MAX)
    luaL_error(L, "too many Lua values in pattern");
  if (n1 == 0) return 0;
  for (i = 1; i <= n1; i++) {
    lua_rawgeti(L, idx1, i);
    lua_rawseti(L, idx2 - 1, n2 + i);
  }
  return n2;
}
