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
typedef  int uint64_t ;

/* Variables and functions */
 int UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 

uint64_t FUNC2(uint64_t v, uint64_t max) {
        uint64_t t, m;

        FUNC0(max > 0);

        /* Multiply the system's task value by the fraction v/max. Hence, if max==100 this calculates percentages
         * relative to the system's maximum number of tasks. Returns UINT64_MAX on overflow. */

        t = FUNC1();
        FUNC0(t > 0);

        m = t * v;
        if (m / t != v) /* overflow? */
                return UINT64_MAX;

        return m / max;
}