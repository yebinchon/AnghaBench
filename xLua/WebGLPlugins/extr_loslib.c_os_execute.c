
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaL_error (int *,char*) ;
 int luaL_execresult (int *,int) ;
 char* luaL_optstring (int *,int,int *) ;
 int lua_pushboolean (int *,int) ;
 int system (char const*) ;

__attribute__((used)) static int os_execute (lua_State *L) {



  const char *cmd = luaL_optstring(L, 1, ((void*)0));
  int stat = system(cmd);
  if (cmd != ((void*)0))
    return luaL_execresult(L, stat);
  else {
    lua_pushboolean(L, stat);
    return 1;
  }

}
