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
struct TYPE_3__ {int /*<<< orphan*/  startsystime; int /*<<< orphan*/  startusertime; int /*<<< orphan*/  startrealtime; scalar_t__ totalsystime; scalar_t__ totalusertime; scalar_t__ totalrealtime; } ;
typedef  TYPE_1__ Timer ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(lua_State *L)
{
  Timer *timer = FUNC0(L, 1, "torch.Timer");
  timer->totalrealtime = 0;
  timer->totalusertime = 0;
  timer->totalsystime = 0;
  timer->startrealtime = FUNC2();
  timer->startusertime = FUNC4();
  timer->startsystime = FUNC3();
  FUNC1(L, 1);
  return 1;
}