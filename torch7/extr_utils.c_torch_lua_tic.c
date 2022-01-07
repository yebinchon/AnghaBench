
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_pushnumber (int *,double) ;
 double real_time () ;

__attribute__((used)) static int torch_lua_tic(lua_State* L)
{
  double ttime = real_time();
  lua_pushnumber(L,ttime);
  return 1;
}
