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
typedef  scalar_t__ vlc_tick_t ;
typedef  int /*<<< orphan*/  vlc_mutex_t ;
typedef  int /*<<< orphan*/  vlc_cond_t ;
struct timespec {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct timespec FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 () ; 

int FUNC5 (vlc_cond_t *p_condvar, vlc_mutex_t *p_mutex,
                        vlc_tick_t deadline)
{
    /* according to POSIX standards, cond_timedwait should be a cancellation point
     * Of course, Darwin does not care */
    FUNC2();

    /*
     * vlc_tick_now() is the monotonic clock, pthread_cond_timedwait expects
     * origin of gettimeofday(). Use timedwait_relative_np() instead.
     */
    vlc_tick_t base = FUNC4();
    deadline -= base;
    if (deadline < 0)
        deadline = 0;

    struct timespec ts = FUNC3(deadline);
    int val = FUNC1(p_condvar, p_mutex, &ts);
    if (val != ETIMEDOUT)
        FUNC0 ("timed-waiting on condition");
    return val;
}