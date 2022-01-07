
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaT_newmetatable (int *,int ,int *,int ,int ,int ) ;
 int luaT_setfuncs (int *,int ,int ) ;
 int lua_pop (int *,int) ;
 int torch_Generator ;
 int torch_Generator_factory ;
 int torch_Generator_free ;
 int torch_Generator_new ;
 int torch_Generator_table_ ;

void torch_Generator_init(lua_State *L)
{
  luaT_newmetatable(L, torch_Generator, ((void*)0),
                    torch_Generator_new, torch_Generator_free, torch_Generator_factory);
  luaT_setfuncs(L, torch_Generator_table_, 0);
  lua_pop(L, 1);
}
