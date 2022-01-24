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
struct timeval {int tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct timespec {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_REALTIME ; 
#define  TIME_UTC 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 

int FUNC2(struct timespec *ts, int base)
{
    switch (base)
    {
        case TIME_UTC:
#if (_POSIX_TIMERS >= 0)
            if (FUNC0(CLOCK_REALTIME, ts) == 0)
                break;
#endif
#if (_POSIX_TIMERS <= 0)
        {
            struct timeval tv;

            if (FUNC1(&tv, NULL) == 0)
            {
                ts->tv_sec = tv.tv_sec;
                ts->tv_nsec = tv.tv_usec * 1000;
                break;
            }
        }
#endif
            /* fall through */
        default:
            return 0;
    }
    return base;
}