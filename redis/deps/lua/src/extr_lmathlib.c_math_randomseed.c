
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_checkint (int *,int) ;
 int srand (int ) ;

__attribute__((used)) static int math_randomseed (lua_State *L) {
  srand(luaL_checkint(L, 1));
  return 0;
}
