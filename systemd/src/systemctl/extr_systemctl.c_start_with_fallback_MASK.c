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
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(void) {
        /* First, try systemd via D-Bus. */
        if (FUNC3(0, NULL, NULL) == 0)
                return 0;

#if HAVE_SYSV_COMPAT
        /* Nothing else worked, so let's try /dev/initctl */
        if (talk_initctl(action_to_runlevel()) > 0)
                return 0;
#endif

        return FUNC2(FUNC0(EIO),
                               "Failed to talk to init daemon.");
}