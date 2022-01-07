
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_3__ {double totalrealtime; double startrealtime; double totalusertime; double startusertime; double totalsystime; double startsystime; scalar_t__ isRunning; } ;
typedef TYPE_1__ Timer ;


 TYPE_1__* luaT_checkudata (int *,int,char*) ;
 int lua_createtable (int *,int ,int) ;
 int lua_pushnumber (int *,double) ;
 int lua_setfield (int *,int,char*) ;
 double ticksPerSecond ;
 double torch_Timer_realtime () ;
 double torch_Timer_systime () ;
 double torch_Timer_usertime () ;

__attribute__((used)) static int torch_Timer_time(lua_State *L)
{
  Timer *timer = luaT_checkudata(L, 1, "torch.Timer");
  double realtime = (timer->isRunning ? (timer->totalrealtime + torch_Timer_realtime() - timer->startrealtime) : timer->totalrealtime);
  double usertime = (timer->isRunning ? (timer->totalusertime + torch_Timer_usertime() - timer->startusertime) : timer->totalusertime);
  double systime = (timer->isRunning ? (timer->totalsystime + torch_Timer_systime() - timer->startsystime) : timer->totalsystime);





  lua_createtable(L, 0, 3);
  lua_pushnumber(L, realtime);
  lua_setfield(L, -2, "real");
  lua_pushnumber(L, usertime);
  lua_setfield(L, -2, "user");
  lua_pushnumber(L, systime);
  lua_setfield(L, -2, "sys");
  return 1;
}
