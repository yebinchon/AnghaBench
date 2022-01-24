#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int exported_invocation_id; int exported_log_level_max; int exported_log_extra_fields; int exported_log_ratelimit_interval; int exported_log_ratelimit_burst; int /*<<< orphan*/  id; int /*<<< orphan*/  manager; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

void FUNC4(Unit *u) {
        const char *p;

        FUNC1(u);

        if (!u->id)
                return;

        if (!FUNC0(u->manager))
                return;

        /* Undoes the effect of unit_export_state() */

        if (u->exported_invocation_id) {
                p = FUNC2("/run/systemd/units/invocation:", u->id);
                (void) FUNC3(p);

                u->exported_invocation_id = false;
        }

        if (u->exported_log_level_max) {
                p = FUNC2("/run/systemd/units/log-level-max:", u->id);
                (void) FUNC3(p);

                u->exported_log_level_max = false;
        }

        if (u->exported_log_extra_fields) {
                p = FUNC2("/run/systemd/units/extra-fields:", u->id);
                (void) FUNC3(p);

                u->exported_log_extra_fields = false;
        }

        if (u->exported_log_ratelimit_interval) {
                p = FUNC2("/run/systemd/units/log-rate-limit-interval:", u->id);
                (void) FUNC3(p);

                u->exported_log_ratelimit_interval = false;
        }

        if (u->exported_log_ratelimit_burst) {
                p = FUNC2("/run/systemd/units/log-rate-limit-burst:", u->id);
                (void) FUNC3(p);

                u->exported_log_ratelimit_burst = false;
        }
}