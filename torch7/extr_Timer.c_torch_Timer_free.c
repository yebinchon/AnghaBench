
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;
typedef int Timer ;


 int * luaT_checkudata (int *,int,char*) ;
 int luaT_free (int *,int *) ;

__attribute__((used)) static int torch_Timer_free(lua_State *L)
{
  Timer *timer = luaT_checkudata(L, 1, "torch.Timer");
  luaT_free(L, timer);
  return 0;
}
