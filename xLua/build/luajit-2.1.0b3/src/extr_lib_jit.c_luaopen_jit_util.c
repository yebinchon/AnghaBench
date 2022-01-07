
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int LJ_LIB_REG (int *,int *,int ) ;
 int jit_util ;

__attribute__((used)) static int luaopen_jit_util(lua_State *L)
{
  LJ_LIB_REG(L, ((void*)0), jit_util);
  return 1;
}
