
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int EXIT_SUCCESS ;
 int exit (int ) ;
 int luaL_optint (int *,int,int ) ;

__attribute__((used)) static int os_exit (lua_State *L) {
  exit(luaL_optint(L, 1, EXIT_SUCCESS));
}
