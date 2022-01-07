
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int FILE ;


 int LUA_FILEHANDLE ;
 int _fileno (int *) ;
 int _isatty (int ) ;
 int fileno (int *) ;
 int isatty (int ) ;
 scalar_t__ luaL_checkudata (int *,int,int ) ;
 int lua_pushboolean (int *,int ) ;

__attribute__((used)) static int torch_isatty(lua_State *L)
{
  FILE **fp = (FILE **) luaL_checkudata(L, -1, LUA_FILEHANDLE);



  lua_pushboolean(L, isatty(fileno(*fp)));

  return 1;
}
