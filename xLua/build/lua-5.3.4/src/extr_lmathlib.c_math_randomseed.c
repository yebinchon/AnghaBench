
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef scalar_t__ lua_Integer ;


 int l_rand () ;
 int l_srand (unsigned int) ;
 scalar_t__ luaL_checknumber (int *,int) ;

__attribute__((used)) static int math_randomseed (lua_State *L) {
  l_srand((unsigned int)(lua_Integer)luaL_checknumber(L, 1));
  (void)l_rand();
  return 0;
}
