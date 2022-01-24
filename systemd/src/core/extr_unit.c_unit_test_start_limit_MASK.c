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
struct TYPE_5__ {int start_limit_hit; int /*<<< orphan*/  reboot_arg; int /*<<< orphan*/  start_limit_action; int /*<<< orphan*/  manager; int /*<<< orphan*/  id; int /*<<< orphan*/  start_ratelimit; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int ECANCELED ; 
 int EMERGENCY_ACTION_IS_WATCHDOG ; 
 int EMERGENCY_ACTION_WARN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ,char*) ; 

int FUNC5(Unit *u) {
        const char *reason;

        FUNC0(u);

        if (FUNC3(&u->start_ratelimit)) {
                u->start_limit_hit = false;
                return 0;
        }

        FUNC2(u, "Start request repeated too quickly.");
        u->start_limit_hit = true;

        reason = FUNC4("unit ", u->id, " failed");

        FUNC1(u->manager, u->start_limit_action,
                         EMERGENCY_ACTION_IS_WATCHDOG|EMERGENCY_ACTION_WARN,
                         u->reboot_arg, -1, reason);

        return -ECANCELED;
}