
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaT_newmetatable (int *,char*,int *,int *,int *,int *) ;
 int luaT_setfuncs (int *,int ,int ) ;
 int lua_pop (int *,int) ;
 int torch_File__ ;

void torch_File_init(lua_State *L)
{
  luaT_newmetatable(L, "torch.File", ((void*)0), ((void*)0), ((void*)0), ((void*)0));
  luaT_setfuncs(L, torch_File__, 0);
  lua_pop(L, 1);
}
