
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int lua_State ;
typedef int __int64 ;
struct TYPE_4__ {int isRunning; int startsystime; int startusertime; int startrealtime; scalar_t__ totalsystime; scalar_t__ totalusertime; scalar_t__ totalrealtime; } ;
typedef TYPE_1__ Timer ;
typedef int LARGE_INTEGER ;


 int QueryPerformanceFrequency (scalar_t__*) ;
 int assert (int) ;
 TYPE_1__* luaT_alloc (int *,int) ;
 int luaT_pushudata (int *,TYPE_1__*,char*) ;
 scalar_t__ ticksPerSecond ;
 int torch_Timer_realtime () ;
 int torch_Timer_systime () ;
 int torch_Timer_usertime () ;

__attribute__((used)) static int torch_Timer_new(lua_State *L)
{







  Timer *timer = luaT_alloc(L, sizeof(Timer));
  timer->isRunning = 1;
  timer->totalrealtime = 0;
  timer->totalusertime = 0;
  timer->totalsystime = 0;
  timer->startrealtime = torch_Timer_realtime();
  timer->startusertime = torch_Timer_usertime();
  timer->startsystime = torch_Timer_systime();
  luaT_pushudata(L, timer, "torch.Timer");
  return 1;
}
