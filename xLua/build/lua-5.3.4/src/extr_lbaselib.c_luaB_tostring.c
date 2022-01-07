
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_checkany (int *,int) ;
 int luaL_tolstring (int *,int,int *) ;

__attribute__((used)) static int luaB_tostring (lua_State *L) {
  luaL_checkany(L, 1);
  luaL_tolstring(L, 1, ((void*)0));
  return 1;
}
