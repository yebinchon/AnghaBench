
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaT_newmetatable (int *,char*,char*,int ,int ,int *) ;
 int luaT_setfuncs (int *,int ,int ) ;
 int lua_pop (int *,int) ;
 int torch_MemoryFile__ ;
 int torch_MemoryFile_free ;
 int torch_MemoryFile_new ;

void torch_MemoryFile_init(lua_State *L)
{
  luaT_newmetatable(L, "torch.MemoryFile", "torch.File",
                    torch_MemoryFile_new, torch_MemoryFile_free, ((void*)0));
  luaT_setfuncs(L, torch_MemoryFile__, 0);
  lua_pop(L, 1);
}
