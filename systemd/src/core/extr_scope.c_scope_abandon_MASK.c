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
struct TYPE_6__ {int was_abandoned; int /*<<< orphan*/  controller_track; int /*<<< orphan*/  controller; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ Scope ;

/* Variables and functions */
 int EPERM ; 
 int ESTALE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCOPE_ABANDONED ; 
 int /*<<< orphan*/  SCOPE_RUNNING ; 
 int /*<<< orphan*/  SPECIAL_INIT_SCOPE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(Scope *s) {
        FUNC2(s);

        if (FUNC7(FUNC1(s), SPECIAL_INIT_SCOPE))
                return -EPERM;

        if (!FUNC0(s->state, SCOPE_RUNNING, SCOPE_ABANDONED))
                return -ESTALE;

        s->was_abandoned = true;

        s->controller = FUNC3(s->controller);
        s->controller_track = FUNC5(s->controller_track);

        FUNC4(s, SCOPE_ABANDONED);

        /* The client is no longer watching the remaining processes, so let's step in here, under the assumption that
         * the remaining processes will be sooner or later reassigned to us as parent. */
        (void) FUNC6(FUNC1(s));

        return 0;
}