
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int THGetNumCores () ;
 int lua_pushinteger (int *,int ) ;

__attribute__((used)) static int torch_getnumcores(lua_State *L)
{
  lua_pushinteger(L, THGetNumCores());
  return 1;
}
