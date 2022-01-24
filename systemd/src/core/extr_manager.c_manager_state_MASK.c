#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_7__ {int /*<<< orphan*/  failed_units; } ;
typedef  int /*<<< orphan*/  ManagerState ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  MANAGER_DEGRADED ; 
 int /*<<< orphan*/  MANAGER_INITIALIZING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  MANAGER_MAINTENANCE ; 
 int /*<<< orphan*/  MANAGER_RUNNING ; 
 int /*<<< orphan*/  MANAGER_STARTING ; 
 int /*<<< orphan*/  MANAGER_STOPPING ; 
 int /*<<< orphan*/  SPECIAL_BASIC_TARGET ; 
 int /*<<< orphan*/  SPECIAL_EMERGENCY_TARGET ; 
 int /*<<< orphan*/  SPECIAL_RESCUE_TARGET ; 
 int /*<<< orphan*/  SPECIAL_SHUTDOWN_TARGET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

ManagerState FUNC8(Manager *m) {
        Unit *u;

        FUNC3(m);

        /* Did we ever finish booting? If not then we are still starting up */
        if (!FUNC0(m)) {

                u = FUNC4(m, SPECIAL_BASIC_TARGET);
                if (!u || !FUNC2(FUNC7(u)))
                        return MANAGER_INITIALIZING;

                return MANAGER_STARTING;
        }

        /* Is the special shutdown target active or queued? If so, we are in shutdown state */
        u = FUNC4(m, SPECIAL_SHUTDOWN_TARGET);
        if (u && FUNC6(u))
                return MANAGER_STOPPING;

        if (FUNC1(m)) {
                /* Are the rescue or emergency targets active or queued? If so we are in maintenance state */
                u = FUNC4(m, SPECIAL_RESCUE_TARGET);
                if (u && FUNC6(u))
                        return MANAGER_MAINTENANCE;

                u = FUNC4(m, SPECIAL_EMERGENCY_TARGET);
                if (u && FUNC6(u))
                        return MANAGER_MAINTENANCE;
        }

        /* Are there any failed units? If so, we are in degraded mode */
        if (FUNC5(m->failed_units) > 0)
                return MANAGER_DEGRADED;

        return MANAGER_RUNNING;
}