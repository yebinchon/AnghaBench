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
 float INPUT_RATE_MAX ; 
 float INPUT_RATE_MIN ; 
 double FUNC0 (float) ; 
 double FUNC1 (double) ; 

__attribute__((used)) static inline float
FUNC2(float rate, int const dir)
{
    float rate_min = INPUT_RATE_MIN;
    float rate_max = INPUT_RATE_MAX;
    int sign = rate < 0 ? -1 : 1;
    rate = FUNC1(FUNC0(rate) / 0.1 + dir + 0.05) * 0.1;
    if (rate < rate_min)
       rate = rate_min;
    else if (rate > rate_max)
        rate = rate_max;
    return rate * sign;
}