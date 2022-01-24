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
typedef  int usec_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

usec_t FUNC3(usec_t period, usec_t quota, usec_t resolution, usec_t max_period) {
        /* kernel uses a minimum resolution of 1ms, so both period and (quota * period)
         * need to be higher than that boundary. quota is specified in USecPerSec.
         * Additionally, period must be at most max_period. */
        FUNC2(quota > 0);

        return FUNC1(FUNC0(period, resolution, resolution * USEC_PER_SEC / quota), max_period);
}