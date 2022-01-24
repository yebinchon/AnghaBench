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
 int /*<<< orphan*/  ACTION_REEXEC ; 
 scalar_t__ ACTION_RELOAD ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGHUP ; 
 int /*<<< orphan*/  SIGTERM ; 
 scalar_t__ arg_action ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC5(void) {
        /* First, try systemd via D-Bus. */
        if (FUNC2(0, NULL, NULL) >= 0)
                return 0;

        /* Nothing else worked, so let's try signals */
        FUNC1(FUNC0(arg_action, ACTION_RELOAD, ACTION_REEXEC));

        if (FUNC3(1, arg_action == ACTION_RELOAD ? SIGHUP : SIGTERM) < 0)
                return FUNC4(errno, "kill() failed: %m");

        return 0;
}