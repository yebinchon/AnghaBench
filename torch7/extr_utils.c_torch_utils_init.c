
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int luaT_setfuncs (int *,int ,int ) ;
 int torch_updateerrorhandlers (int *) ;
 int torch_utils__ ;

void torch_utils_init(lua_State *L)
{
  torch_updateerrorhandlers(L);
  luaT_setfuncs(L, torch_utils__, 0);
}
