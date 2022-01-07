
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushnil (int *) ;
 scalar_t__ lua_pushthread (int *) ;

__attribute__((used)) static int luaB_corunning (lua_State *L) {
  if (lua_pushthread(L))
    lua_pushnil(L);
  return 1;
}
