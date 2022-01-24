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
typedef  double usec_t ;
typedef  double uint32_t ;

/* Variables and functions */
 int ERANGE ; 
 double UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (double*) ; 
 int FUNC1 (double*) ; 

int FUNC2(usec_t t, uint32_t *ret) {
        static double ticks_in_usec = -1;
        usec_t a;
        int r;

        FUNC0(ret);

        if (ticks_in_usec < 0) {
                r = FUNC1(&ticks_in_usec);
                if (r < 0)
                        return r;
        }

        a = t * ticks_in_usec;
        if (a > UINT32_MAX)
                return -ERANGE;

        *ret = a;
        return 0;
}