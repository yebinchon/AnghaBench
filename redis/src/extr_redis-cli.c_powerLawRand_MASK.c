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
 double RAND_MAX ; 
 double FUNC0 (double,double) ; 
 scalar_t__ FUNC1 () ; 

long long FUNC2(long long min, long long max, double alpha) {
    double pl, r;

    max += 1;
    r = ((double)FUNC1()) / RAND_MAX;
    pl = FUNC0(
        ((FUNC0(max,alpha+1) - FUNC0(min,alpha+1))*r + FUNC0(min,alpha+1)),
        (1.0/(alpha+1)));
    return (max-1-(long long)pl)+min;
}