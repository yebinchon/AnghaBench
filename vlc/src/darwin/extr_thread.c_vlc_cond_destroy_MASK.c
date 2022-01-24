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
typedef  int /*<<< orphan*/  vlc_cond_t ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3 (vlc_cond_t *p_condvar)
{
    int val = FUNC2 (p_condvar);

    /* due to a faulty pthread implementation within Darwin 11 and
     * later condition variables cannot be destroyed without
     * terminating the application immediately.
     * This Darwin kernel issue is still present in version 13
     * and might not be resolved prior to Darwin 15.
     * radar://12496249
     *
     * To work-around this, we are just leaking the condition variable
     * which is acceptable due to VLC's low number of created variables
     * and its usually limited runtime.
     * Ideally, we should implement a re-useable pool.
     */
    if (val != 0) {
        #ifndef NDEBUG
        FUNC1("pthread_cond_destroy returned %i\n", val);
        #endif

        if (val == EBUSY)
            return;
    }

    FUNC0 ("destroying condition");
}