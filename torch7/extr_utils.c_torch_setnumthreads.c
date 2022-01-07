
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int THSetNumThreads (int ) ;
 int luaL_checkint (int *,int) ;

__attribute__((used)) static int torch_setnumthreads(lua_State *L)
{
  THSetNumThreads(luaL_checkint(L, 1));
  return 0;
}
