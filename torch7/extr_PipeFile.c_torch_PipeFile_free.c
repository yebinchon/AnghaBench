
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int THFile ;


 int THFile_free (int *) ;
 int * luaT_checkudata (int *,int,char*) ;

__attribute__((used)) static int torch_PipeFile_free(lua_State *L)
{
  THFile *self = luaT_checkudata(L, 1, "torch.PipeFile");
  THFile_free(self);
  return 0;
}
