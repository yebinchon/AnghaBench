
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int getenv (int ) ;
 int luaL_checkstring (int *,int) ;
 int lua_pushstring (int *,int ) ;

__attribute__((used)) static int os_getenv (lua_State *L) {
  lua_pushstring(L, getenv(luaL_checkstring(L, 1)));
  return 1;
}
