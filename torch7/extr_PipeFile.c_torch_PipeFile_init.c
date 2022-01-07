
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaT_newmetatable (int *,char*,char*,int ,int ,int *) ;
 int luaT_setfuncs (int *,int ,int ) ;
 int lua_pop (int *,int) ;
 int torch_PipeFile__ ;
 int torch_PipeFile_free ;
 int torch_PipeFile_new ;

void torch_PipeFile_init(lua_State *L)
{
  luaT_newmetatable(L, "torch.PipeFile", "torch.DiskFile",
                    torch_PipeFile_new, torch_PipeFile_free, ((void*)0));
  luaT_setfuncs(L, torch_PipeFile__, 0);
  lua_pop(L, 1);
}
