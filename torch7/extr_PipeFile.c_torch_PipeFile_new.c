
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int THFile ;


 int * THPipeFile_new (char const*,char const*,int) ;
 char* luaL_checkstring (int *,int) ;
 char* luaL_optstring (int *,int,char*) ;
 int luaT_optboolean (int *,int,int ) ;
 int luaT_pushudata (int *,int *,char*) ;

__attribute__((used)) static int torch_PipeFile_new(lua_State *L)
{
  const char *name = luaL_checkstring(L, 1);
  const char *mode = luaL_optstring(L, 2, "r");
  int isQuiet = luaT_optboolean(L, 3, 0);
  THFile *self = THPipeFile_new(name, mode, isQuiet);

  luaT_pushudata(L, self, "torch.PipeFile");
  return 1;
}
