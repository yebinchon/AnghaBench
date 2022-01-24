#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ Timer ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TIMER_ELAPSED ; 
 int /*<<< orphan*/  TIMER_RUNNING ; 
 int /*<<< orphan*/  TIMER_SUCCESS ; 
 int /*<<< orphan*/  TIMER_WAITING ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(Unit *u) {
        Timer *t = FUNC1(u);

        FUNC2(t);
        FUNC2(FUNC0(t->state, TIMER_WAITING, TIMER_RUNNING, TIMER_ELAPSED));

        FUNC3(t, TIMER_SUCCESS);
        return 1;
}