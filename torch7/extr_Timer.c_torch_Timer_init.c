
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaT_newmetatable (int *,char*,int *,int ,int ,int *) ;
 int luaT_setfuncs (int *,int ,int ) ;
 int lua_pop (int *,int) ;
 int torch_Timer__ ;
 int torch_Timer_free ;
 int torch_Timer_new ;

void torch_Timer_init(lua_State *L)
{
  luaT_newmetatable(L, "torch.Timer", ((void*)0), torch_Timer_new, torch_Timer_free, ((void*)0));
  luaT_setfuncs(L, torch_Timer__, 0);
  lua_pop(L, 1);
}
