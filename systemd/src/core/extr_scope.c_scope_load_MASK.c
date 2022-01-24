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
struct TYPE_6__ {scalar_t__ load_state; int /*<<< orphan*/  manager; int /*<<< orphan*/  transient; } ;
typedef  TYPE_1__ Unit ;
typedef  int /*<<< orphan*/  Scope ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*) ; 
 scalar_t__ UNIT_LOADED ; 
 scalar_t__ UNIT_STUB ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC7(Unit *u) {
        Scope *s = FUNC1(u);
        int r;

        FUNC2(*s);
        FUNC2(u->load_state == UNIT_STUB);

        if (!u->transient && !FUNC0(u->manager))
                /* Refuse to load non-transient scope units, but allow them while reloading. */
                return -ENOENT;

        r = FUNC4(u);
        if (r < 0)
                return r;

        r = FUNC6(u, false);
        if (r < 0)
                return r;

        if (u->load_state != UNIT_LOADED)
                return 0;

        r = FUNC3(s);
        if (r < 0)
                return r;

        return FUNC5(s);
}