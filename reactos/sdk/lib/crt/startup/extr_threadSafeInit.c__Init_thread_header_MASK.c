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
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (long*,int,int /*<<< orphan*/ ) ; 

void
FUNC2(volatile int* ptss)
{
    while (1)
    {
        /* Try to acquire the first initialization lock */
        int oldTss = FUNC1((long*)ptss, -1, 0);
        if (oldTss == -1)
        {
            /* Busy, wait for the other thread to do the initialization */
            FUNC0();
            continue;
        }

        /* Either we acquired the lock and the caller will do the initializaion
           or the initialization is complete and the caller will skip it */
        break;
    }
}