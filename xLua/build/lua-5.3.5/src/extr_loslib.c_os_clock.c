
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int lua_Number ;


 scalar_t__ CLOCKS_PER_SEC ;
 scalar_t__ clock () ;
 int lua_pushnumber (int *,int) ;

__attribute__((used)) static int os_clock (lua_State *L) {
  lua_pushnumber(L, ((lua_Number)clock())/(lua_Number)CLOCKS_PER_SEC);
  return 1;
}
