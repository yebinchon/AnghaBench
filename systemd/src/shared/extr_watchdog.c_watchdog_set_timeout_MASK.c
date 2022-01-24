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
typedef  scalar_t__ usec_t ;

/* Variables and functions */
 scalar_t__ USEC_INFINITY ; 
 int FUNC0 () ; 
 int FUNC1 () ; 
 scalar_t__ watchdog_fd ; 
 scalar_t__ watchdog_timeout ; 

int FUNC2(usec_t *usec) {
        int r;

        watchdog_timeout = *usec;

        /* If we didn't open the watchdog yet and didn't get any
         * explicit timeout value set, don't do anything */
        if (watchdog_fd < 0 && watchdog_timeout == USEC_INFINITY)
                return 0;

        if (watchdog_fd < 0)
                r = FUNC0();
        else
                r = FUNC1();

        *usec = watchdog_timeout;

        return r;
}