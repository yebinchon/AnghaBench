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
struct TYPE_3__ {double totalrealtime; double startrealtime; double totalusertime; double startusertime; double totalsystime; double startsystime; scalar_t__ isRunning; } ;
typedef  TYPE_1__ Timer ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 double ticksPerSecond ; 
 double FUNC4 () ; 
 double FUNC5 () ; 
 double FUNC6 () ; 

__attribute__((used)) static int FUNC7(lua_State *L)
{
  Timer *timer = FUNC0(L, 1, "torch.Timer");
  double realtime = (timer->isRunning ? (timer->totalrealtime + FUNC4() - timer->startrealtime) : timer->totalrealtime);
  double usertime = (timer->isRunning ? (timer->totalusertime + FUNC6() - timer->startusertime) : timer->totalusertime);
  double systime = (timer->isRunning ? (timer->totalsystime + FUNC5() - timer->startsystime) : timer->totalsystime);
#ifdef _WIN32
  realtime /= ticksPerSecond;
  usertime /= ticksPerSecond;
  systime  /= ticksPerSecond;
#endif
  FUNC1(L, 0, 3);
  FUNC2(L, realtime);
  FUNC3(L, -2, "real");
  FUNC2(L, usertime);
  FUNC3(L, -2, "user");
  FUNC2(L, systime);
  FUNC3(L, -2, "sys");
  return 1;
}