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
struct TYPE_6__ {scalar_t__ load_state; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNIT_LOADED ; 
 TYPE_1__* FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 

int FUNC3(Unit *u) {
        Unit *trigger;

        /* Tests whether the unit to trigger is loaded */

        trigger = FUNC1(u);
        if (!trigger)
                return FUNC2(u, FUNC0(ENOENT),
                                            "Refusing to start, no unit to trigger.");
        if (trigger->load_state != UNIT_LOADED)
                return FUNC2(u, FUNC0(ENOENT),
                                            "Refusing to start, unit %s to trigger not loaded.", trigger->id);

        return 0;
}