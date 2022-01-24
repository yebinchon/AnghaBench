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
 scalar_t__ EINTR ; 
 int /*<<< orphan*/  WDIOC_SETOPTIONS ; 
 int WDIOS_DISABLECARD ; 
 scalar_t__ errno ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ watchdog_fd ; 
 scalar_t__ FUNC4 (scalar_t__,char const*,int) ; 

void FUNC5(bool disarm) {
        int r;

        if (watchdog_fd < 0)
                return;

        if (disarm) {
                int flags;

                /* Explicitly disarm it */
                flags = WDIOS_DISABLECARD;
                r = FUNC0(watchdog_fd, WDIOC_SETOPTIONS, &flags);
                if (r < 0)
                        FUNC2(errno, "Failed to disable hardware watchdog: %m");

                /* To be sure, use magic close logic, too */
                for (;;) {
                        static const char v = 'V';

                        if (FUNC4(watchdog_fd, &v, 1) > 0)
                                break;

                        if (errno != EINTR) {
                                FUNC1(errno, "Failed to disarm watchdog timer: %m");
                                break;
                        }
                }
        }

        watchdog_fd = FUNC3(watchdog_fd);
}