
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {int isRunning; int startsystime; int startusertime; int startrealtime; } ;
typedef TYPE_1__ Timer ;


 TYPE_1__* luaT_checkudata (int *,int,char*) ;
 int lua_settop (int *,int) ;
 int torch_Timer_realtime () ;
 int torch_Timer_systime () ;
 int torch_Timer_usertime () ;

__attribute__((used)) static int torch_Timer_resume(lua_State *L)
{
  Timer *timer = luaT_checkudata(L, 1, "torch.Timer");
  if(!timer->isRunning)
  {
    timer->isRunning = 1;
    timer->startrealtime = torch_Timer_realtime();
    timer->startusertime = torch_Timer_usertime();
    timer->startsystime = torch_Timer_systime();
  }
  lua_settop(L, 1);
  return 1;
}
