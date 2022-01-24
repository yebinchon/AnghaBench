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
 int /*<<< orphan*/  WDIOC_KEEPALIVE ; 
 int /*<<< orphan*/  errno ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 () ; 
 scalar_t__ watchdog_fd ; 

int FUNC3(void) {
        int r;

        if (watchdog_fd < 0) {
                r = FUNC2();
                if (r < 0)
                        return r;
        }

        r = FUNC0(watchdog_fd, WDIOC_KEEPALIVE, 0);
        if (r < 0)
                return FUNC1(errno, "Failed to ping hardware watchdog: %m");

        return 0;
}