#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {scalar_t__ isRunning; int /*<<< orphan*/  totalsystime; int /*<<< orphan*/  totalusertime; int /*<<< orphan*/  totalrealtime; scalar_t__ startsystime; scalar_t__ startusertime; scalar_t__ startrealtime; } ;
typedef  TYPE_1__ Timer ;
typedef  scalar_t__ TimeType ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 

__attribute__((used)) static int FUNC5(lua_State *L)
{
  Timer *timer = FUNC0(L, 1, "torch.Timer");
  if(timer->isRunning)  
  {
    TimeType realtime = FUNC2() - timer->startrealtime;
    TimeType usertime = FUNC4() - timer->startusertime;
    TimeType systime = FUNC3() - timer->startsystime;
    timer->totalrealtime += realtime;
    timer->totalusertime += usertime;
    timer->totalsystime += systime;
    timer->isRunning = 0;
  }
  FUNC1(L, 1);
  return 1;  
}