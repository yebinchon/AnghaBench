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
 scalar_t__ ACTION_RUN ; 
 scalar_t__ ACTION_TEST ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  EUNATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ arg_action ; 
 scalar_t__ arg_system ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static int FUNC7(void) {

        if (FUNC3() == 1 &&
            arg_action != ACTION_RUN)
                return FUNC4(FUNC0(EPERM),
                                       "Unsupported execution mode while PID 1.");

        if (FUNC3() == 1 &&
            !arg_system)
                return FUNC4(FUNC0(EPERM),
                                       "Can't run --user mode as PID 1.");

        if (arg_action == ACTION_RUN &&
            arg_system &&
            FUNC3() != 1)
                return FUNC4(FUNC0(EPERM),
                                       "Can't run system mode unless PID 1.");

        if (arg_action == ACTION_TEST &&
            FUNC2() == 0)
                return FUNC4(FUNC0(EPERM),
                                       "Don't run test mode as root.");

        if (!arg_system &&
            arg_action == ACTION_RUN &&
            FUNC6() <= 0)
                return FUNC4(FUNC0(EOPNOTSUPP),
                                       "Trying to run as user instance, but the system has not been booted with systemd.");

        if (!arg_system &&
            arg_action == ACTION_RUN &&
            !FUNC1("XDG_RUNTIME_DIR"))
                return FUNC4(FUNC0(EUNATCH),
                                       "Trying to run as user instance, but $XDG_RUNTIME_DIR is not set.");

        if (arg_system &&
            arg_action == ACTION_RUN &&
            FUNC5() > 0)
                return FUNC4(FUNC0(EOPNOTSUPP),
                                       "Cannot be run in a chroot() environment.");

        return 0;
}