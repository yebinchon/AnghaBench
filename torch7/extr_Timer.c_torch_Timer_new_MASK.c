#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  __int64 ;
struct TYPE_4__ {int isRunning; int /*<<< orphan*/  startsystime; int /*<<< orphan*/  startusertime; int /*<<< orphan*/  startrealtime; scalar_t__ totalsystime; scalar_t__ totalusertime; scalar_t__ totalrealtime; } ;
typedef  TYPE_1__ Timer ;
typedef  int /*<<< orphan*/  LARGE_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,char*) ; 
 scalar_t__ ticksPerSecond ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int FUNC7(lua_State *L)
{
#ifdef _WIN32
  if (ticksPerSecond == 0)
  {
    assert(sizeof(LARGE_INTEGER) == sizeof(__int64));
    QueryPerformanceFrequency(&ticksPerSecond);
  }
#endif
  Timer *timer = FUNC2(L, sizeof(Timer));
  timer->isRunning = 1;
  timer->totalrealtime = 0;
  timer->totalusertime = 0;
  timer->totalsystime = 0;
  timer->startrealtime = FUNC4();
  timer->startusertime = FUNC6();
  timer->startsystime = FUNC5();
  FUNC3(L, timer, "torch.Timer");
  return 1;
}