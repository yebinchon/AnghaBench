
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int MAXARGLINE ;
 int io_readline ;
 int luaL_argcheck (int *,int,int,char*) ;
 int lua_gettop (int *) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushcclosure (int *,int ,int) ;
 int lua_pushinteger (int *,int) ;
 int lua_rotate (int *,int,int) ;

__attribute__((used)) static void aux_lines (lua_State *L, int toclose) {
  int n = lua_gettop(L) - 1;
  luaL_argcheck(L, n <= MAXARGLINE, MAXARGLINE + 2, "too many arguments");
  lua_pushinteger(L, n);
  lua_pushboolean(L, toclose);
  lua_rotate(L, 2, 2);
  lua_pushcclosure(L, io_readline, 3 + n);
}
