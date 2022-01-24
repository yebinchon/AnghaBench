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
typedef  TYPE_1__ Scope ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SCOPE_ABANDONED ; 
 int /*<<< orphan*/  SCOPE_RUNNING ; 
 int /*<<< orphan*/  SCOPE_STOP_SIGKILL ; 
 int /*<<< orphan*/  SCOPE_STOP_SIGTERM ; 
 int /*<<< orphan*/  SCOPE_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(Unit *u) {
        Scope *s = FUNC1(u);

        FUNC2(s);

        if (FUNC0(s->state, SCOPE_STOP_SIGTERM, SCOPE_STOP_SIGKILL))
                return 0;

        FUNC2(FUNC0(s->state, SCOPE_RUNNING, SCOPE_ABANDONED));

        FUNC3(s, SCOPE_STOP_SIGTERM, SCOPE_SUCCESS);
        return 1;
}