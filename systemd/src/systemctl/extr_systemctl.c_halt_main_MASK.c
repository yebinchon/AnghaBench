#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  ACTION_HALT ; 
 int /*<<< orphan*/  ACTION_POWEROFF ; 
 int /*<<< orphan*/  ACTION_REBOOT ; 
 int /*<<< orphan*/  EINPROGRESS ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int EPERM ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  arg_action ; 
 scalar_t__ arg_dry_run ; 
 scalar_t__ arg_force ; 
 int arg_no_block ; 
 int /*<<< orphan*/  arg_no_wtmp ; 
 scalar_t__ arg_when ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 int FUNC12 () ; 
 int FUNC13 () ; 

__attribute__((used)) static int FUNC14(void) {
        int r;

        r = FUNC7(arg_action);
        if (r < 0)
                return r;

        /* Delayed shutdown requested, and was successful */
        if (arg_when > 0 && FUNC9() == 0)
                return 0;
        /* no delay, or logind failed or is not at all available */

        if (FUNC2() != 0) {
                if (arg_dry_run || arg_force > 0) {
                        (void) FUNC10();
                        return -EPERM;
                }

                /* Try logind if we are a normal user and no special
                 * mode applies. Maybe polkit allows us to shutdown
                 * the machine. */
                if (FUNC0(arg_action, ACTION_POWEROFF, ACTION_REBOOT, ACTION_HALT)) {
                        r = FUNC8(arg_action);
                        if (r >= 0)
                                return r;
                        if (FUNC0(r, -EOPNOTSUPP, -EINPROGRESS))
                                /* requested operation is not
                                 * supported on the local system or
                                 * already in progress */
                                return r;
                        /* on all other errors, try low-level operation */
                }
        }

        /* In order to minimize the difference between operation with and
         * without logind, we explicitly enable non-blocking mode for this,
         * as logind's shutdown operations are always non-blocking. */
        arg_no_block = true;

        if (!arg_dry_run && !arg_force)
                return FUNC12();

        FUNC1(FUNC2() == 0);

        if (!arg_no_wtmp) {
                if (FUNC11() > 0)
                        FUNC4("Not writing utmp record, assuming that systemd-update-utmp is used.");
                else {
                        r = FUNC13();
                        if (r < 0)
                                FUNC6(r, "Failed to write utmp record: %m");
                }
        }

        if (arg_dry_run)
                return 0;

        r = FUNC3(arg_action);
        return FUNC5(r, "Failed to reboot: %m");
}