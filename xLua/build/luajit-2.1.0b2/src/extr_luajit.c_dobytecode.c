
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 scalar_t__ loadjitmodule (int *) ;
 int lua_pcall (int *,int,int ,int ) ;
 int lua_pushliteral (int *,char*) ;
 int lua_pushstring (int *,char*) ;
 int report (int *,int ) ;

__attribute__((used)) static int dobytecode(lua_State *L, char **argv)
{
  int narg = 0;
  lua_pushliteral(L, "bcsave");
  if (loadjitmodule(L))
    return 1;
  if (argv[0][2]) {
    narg++;
    argv[0][1] = '-';
    lua_pushstring(L, argv[0]+1);
  }
  for (argv++; *argv != ((void*)0); narg++, argv++)
    lua_pushstring(L, *argv);
  return report(L, lua_pcall(L, narg, 0, 0));
}
