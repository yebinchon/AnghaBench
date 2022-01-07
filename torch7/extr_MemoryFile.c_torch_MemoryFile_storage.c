
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int THFile ;


 int THCharStorage_retain (int ) ;
 int THMemoryFile_storage (int *) ;
 int * luaT_checkudata (int *,int,char*) ;
 int luaT_pushudata (int *,int ,char*) ;

__attribute__((used)) static int torch_MemoryFile_storage(lua_State *L)
{
  THFile *self = luaT_checkudata(L, 1, "torch.MemoryFile");
  THCharStorage_retain(THMemoryFile_storage(self));
  luaT_pushudata(L, THMemoryFile_storage(self), "torch.CharStorage");
  return 1;
}
