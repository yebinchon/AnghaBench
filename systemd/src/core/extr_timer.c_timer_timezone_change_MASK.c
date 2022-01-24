#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_5__ {scalar_t__ state; scalar_t__ on_timezone_change; } ;
typedef  TYPE_1__ Timer ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ TIMER_WAITING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC5(Unit *u) {
        Timer *t = FUNC0(u);

        FUNC1(u);

        if (t->state != TIMER_WAITING)
                return;

        if (t->on_timezone_change) {
                FUNC2(u, "Timezone change, triggering activation.");
                FUNC3(t);
        } else {
                FUNC2(u, "Timezone change, recalculating next elapse.");
                FUNC4(t, false);
        }
}