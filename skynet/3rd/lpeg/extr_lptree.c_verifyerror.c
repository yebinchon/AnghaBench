
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*,...) ;
 int lua_rawgeti (int *,int,int) ;
 int val2str (int *,int) ;

__attribute__((used)) static int verifyerror (lua_State *L, int *passed, int npassed) {
  int i, j;
  for (i = npassed - 1; i >= 0; i--) {
    for (j = i - 1; j >= 0; j--) {
      if (passed[i] == passed[j]) {
        lua_rawgeti(L, -1, passed[i]);
        return luaL_error(L, "rule '%s' may be left recursive", val2str(L, -1));
      }
    }
  }
  return luaL_error(L, "too many left calls in grammar");
}
