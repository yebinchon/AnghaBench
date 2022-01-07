
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int getpatt (int *,int,int *) ;
 int luaL_checkany (int *,int) ;
 int lua_settop (int *,int) ;

__attribute__((used)) static int lp_P (lua_State *L) {
  luaL_checkany(L, 1);
  getpatt(L, 1, ((void*)0));
  lua_settop(L, 1);
  return 1;
}
