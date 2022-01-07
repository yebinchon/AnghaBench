
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int LUA_OK ;
 int l_message (char*,char*) ;
 int * luaL_newstate () ;
 int lua_close (int *) ;
 int lua_pcall (int *,int,int,int ) ;
 int lua_pushcfunction (int *,int *) ;
 int lua_pushinteger (int *,int) ;
 int lua_pushlightuserdata (int *,char**) ;
 int lua_toboolean (int *,int) ;
 int pmain ;
 int report (int *,int) ;

int main (int argc, char **argv) {
  int status, result;
  lua_State *L = luaL_newstate();
  if (L == ((void*)0)) {
    l_message(argv[0], "cannot create state: not enough memory");
    return EXIT_FAILURE;
  }
  lua_pushcfunction(L, &pmain);
  lua_pushinteger(L, argc);
  lua_pushlightuserdata(L, argv);
  status = lua_pcall(L, 2, 1, 0);
  result = lua_toboolean(L, -1);
  report(L, status);
  lua_close(L);
  return (result && status == LUA_OK) ? EXIT_SUCCESS : EXIT_FAILURE;
}
