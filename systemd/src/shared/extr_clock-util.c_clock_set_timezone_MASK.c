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
struct tm {int tm_gmtoff; } ;
struct timezone {int tz_minuteswest; scalar_t__ tz_dsttime; } ;
struct timeval {int dummy; } ;
struct timespec {int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct timespec*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct tm*) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (struct timeval const*,struct timezone*) ; 

int FUNC5(int *min) {
        const struct timeval *tv_null = NULL;
        struct timespec ts;
        struct tm tm;
        int minutesdelta;
        struct timezone tz;

        FUNC0(FUNC1(CLOCK_REALTIME, &ts) == 0);
        FUNC0(FUNC2(&ts.tv_sec, &tm));
        minutesdelta = tm.tm_gmtoff / 60;

        tz.tz_minuteswest = -minutesdelta;
        tz.tz_dsttime = 0; /* DST_NONE */

        /*
         * If the RTC does not run in UTC but in local time, the very first
         * call to settimeofday() will set the kernel's timezone and will warp the
         * system clock, so that it runs in UTC instead of the local time we
         * have read from the RTC.
         */
        if (FUNC4(tv_null, &tz) < 0)
                return FUNC3();

        if (min)
                *min = minutesdelta;
        return 0;
}