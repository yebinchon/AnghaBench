#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long uint64_t ;
typedef  unsigned long long uint32_t ;
struct timespec {unsigned long long tv_sec; unsigned long long tv_nsec; } ;
struct TYPE_3__ {unsigned long long tv_sec; unsigned long long tv_nsec; } ;
typedef  TYPE_1__ mach_timespec_t ;
typedef  int /*<<< orphan*/  clock_serv_t ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC_RAW ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  SYSTEM_CLOCK ; 
 unsigned long long add_monotime ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned long long last_monotime ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 

uint64_t FUNC7(void)
{
    uint64_t time;
#if defined(_WIN32) || defined(__WIN32__) || defined (WIN32)
    time = (uint64_t)GetTickCount() + add_monotime;

    if (time < last_monotime) { /* Prevent time from ever decreasing because of 32 bit wrap. */
        uint32_t add = ~0;
        add_monotime += add;
        time += add;
    }

    last_monotime = time;
#else
    struct timespec monotime;
#if defined(__linux__) && defined(CLOCK_MONOTONIC_RAW)
    clock_gettime(CLOCK_MONOTONIC_RAW, &monotime);
#elif defined(__APPLE__)
    clock_serv_t muhclock;
    mach_timespec_t machtime;

    host_get_clock_service(mach_host_self(), SYSTEM_CLOCK, &muhclock);
    clock_get_time(muhclock, &machtime);
    mach_port_deallocate(mach_task_self(), muhclock);

    monotime.tv_sec = machtime.tv_sec;
    monotime.tv_nsec = machtime.tv_nsec;
#else
    FUNC2(CLOCK_MONOTONIC, &monotime);
#endif
    time = 1000ULL * monotime.tv_sec + (monotime.tv_nsec / 1000000ULL);
#endif
    return time;
}