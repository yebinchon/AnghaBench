
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {scalar_t__ isRunning; int totalsystime; int totalusertime; int totalrealtime; scalar_t__ startsystime; scalar_t__ startusertime; scalar_t__ startrealtime; } ;
typedef TYPE_1__ Timer ;
typedef scalar_t__ TimeType ;


 TYPE_1__* luaT_checkudata (int *,int,char*) ;
 int lua_settop (int *,int) ;
 scalar_t__ torch_Timer_realtime () ;
 scalar_t__ torch_Timer_systime () ;
 scalar_t__ torch_Timer_usertime () ;

__attribute__((used)) static int torch_Timer_stop(lua_State *L)
{
  Timer *timer = luaT_checkudata(L, 1, "torch.Timer");
  if(timer->isRunning)
  {
    TimeType realtime = torch_Timer_realtime() - timer->startrealtime;
    TimeType usertime = torch_Timer_usertime() - timer->startusertime;
    TimeType systime = torch_Timer_systime() - timer->startsystime;
    timer->totalrealtime += realtime;
    timer->totalusertime += usertime;
    timer->totalsystime += systime;
    timer->isRunning = 0;
  }
  lua_settop(L, 1);
  return 1;
}
