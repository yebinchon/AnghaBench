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
typedef  int usec_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int) ; 
 int ENOTTY ; 
 int FORMAT_TIMESPAN_MAX ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_WARNING ; 
 int USEC_INFINITY ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  WDIOC_KEEPALIVE ; 
 int /*<<< orphan*/  WDIOC_SETOPTIONS ; 
 int /*<<< orphan*/  WDIOC_SETTIMEOUT ; 
 int WDIOS_DISABLECARD ; 
 int WDIOS_ENABLECARD ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,char*,...) ; 
 scalar_t__ watchdog_fd ; 
 int watchdog_timeout ; 

__attribute__((used)) static int FUNC6(void) {
        int r;

        if (watchdog_fd < 0)
                return 0;

        if (watchdog_timeout == USEC_INFINITY)
                return 0;
        else if (watchdog_timeout == 0) {
                int flags;

                flags = WDIOS_DISABLECARD;
                r = FUNC2(watchdog_fd, WDIOC_SETOPTIONS, &flags);
                if (r < 0)
                        return FUNC5(errno, "Failed to disable hardware watchdog: %m");
        } else {
                int sec, flags;
                char buf[FORMAT_TIMESPAN_MAX];

                sec = (int) FUNC0(watchdog_timeout, USEC_PER_SEC);
                r = FUNC2(watchdog_fd, WDIOC_SETTIMEOUT, &sec);
                if (r < 0)
                        return FUNC5(errno, "Failed to set timeout to %is: %m", sec);

                watchdog_timeout = (usec_t) sec * USEC_PER_SEC;
                FUNC4("Set hardware watchdog to %s.", FUNC1(buf, sizeof(buf), watchdog_timeout, 0));

                flags = WDIOS_ENABLECARD;
                r = FUNC2(watchdog_fd, WDIOC_SETOPTIONS, &flags);
                if (r < 0) {
                        /* ENOTTY means the watchdog is always enabled so we're fine */
                        FUNC3(errno == ENOTTY ? LOG_DEBUG : LOG_WARNING,
                                 "Failed to enable hardware watchdog: %m");
                        if (errno != ENOTTY)
                                return -errno;
                }

                r = FUNC2(watchdog_fd, WDIOC_KEEPALIVE, 0);
                if (r < 0)
                        return FUNC5(errno, "Failed to ping hardware watchdog: %m");
        }

        return 0;
}