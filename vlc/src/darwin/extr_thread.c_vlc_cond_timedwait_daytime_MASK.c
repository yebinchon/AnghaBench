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
typedef  int /*<<< orphan*/  vlc_mutex_t ;
typedef  int /*<<< orphan*/  vlc_cond_t ;
typedef  int /*<<< orphan*/  time_t ;
struct timespec {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timespec*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3 (vlc_cond_t *p_condvar, vlc_mutex_t *p_mutex,
                                time_t deadline)
{
    /*
     * Note that both pthread_cond_timedwait_relative_np and pthread_cond_timedwait
     * convert the given timeout to a mach absolute deadline, with system startup
     * as the time origin. There is no way you can change this behaviour.
     *
     * For more details, see: https://devforums.apple.com/message/931605
     */

    FUNC2();

    /*
     * FIXME: It is assumed, that in this case the system waits until the real
     * time deadline is passed, even if the real time is adjusted in between.
     * This is not fulfilled, as described above.
     */
    struct timespec ts = { deadline, 0 };
    int val = FUNC1(p_condvar, p_mutex, &ts);

    if (val != ETIMEDOUT)
        FUNC0 ("timed-waiting on condition");
    return val;
}