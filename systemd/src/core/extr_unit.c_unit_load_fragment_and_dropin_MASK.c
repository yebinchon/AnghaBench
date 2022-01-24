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
struct TYPE_6__ {scalar_t__ load_state; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ UNIT_LOADED ; 
 scalar_t__ UNIT_STUB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*) ; 

int FUNC4(Unit *u, bool fragment_required) {
        int r;

        FUNC0(u);

        /* Load a .{service,socket,...} file */
        r = FUNC3(u);
        if (r < 0)
                return r;

        if (u->load_state == UNIT_STUB) {
                if (fragment_required)
                        return -ENOENT;

                u->load_state = UNIT_LOADED;
        }

        /* Load drop-in directory data. If u is an alias, we might be reloading the
         * target unit needlessly. But we cannot be sure which drops-ins have already
         * been loaded and which not, at least without doing complicated book-keeping,
         * so let's always reread all drop-ins. */
        return FUNC2(FUNC1(u));
}