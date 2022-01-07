
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_call (int *,int,int ) ;
 int lua_pushvalue (int *,int) ;

__attribute__((used)) static void dooptions (lua_State *L, int n) {
  int i;
  for (i = 2; i <= n; i++) {
    lua_pushvalue(L, i);
    lua_pushvalue(L, -2);
    lua_call(L, 1, 0);
  }
}
