
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {scalar_t__ isRunning; } ;
typedef TYPE_1__ Timer ;


 TYPE_1__* luaT_checkudata (int *,int,char*) ;
 int lua_pushfstring (int *,char*,char*) ;

__attribute__((used)) static int torch_Timer___tostring__(lua_State *L)
{
  Timer *timer = luaT_checkudata(L, 1, "torch.Timer");
  lua_pushfstring(L, "torch.Timer [status: %s]", (timer->isRunning ? "running" : "stopped"));
  return 1;
}
