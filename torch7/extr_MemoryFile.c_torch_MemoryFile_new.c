
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int THFile ;
typedef int THCharStorage ;


 int * THMemoryFile_new (char const*) ;
 int * THMemoryFile_newWithStorage (int *,char const*) ;
 char* luaL_optstring (int *,int,char*) ;
 int luaT_pushudata (int *,int *,char*) ;
 int * luaT_toudata (int *,int,char*) ;

__attribute__((used)) static int torch_MemoryFile_new(lua_State *L)
{
  const char *mode;
  THCharStorage *storage = luaT_toudata(L, 1, "torch.CharStorage");
  THFile *self;

  if(storage)
  {
    mode = luaL_optstring(L, 2, "rw");
    self = THMemoryFile_newWithStorage(storage, mode);
  }
  else
  {
    mode = luaL_optstring(L, 1, "rw");
    self = THMemoryFile_new(mode);
  }

  luaT_pushudata(L, self, "torch.MemoryFile");
  return 1;
}
