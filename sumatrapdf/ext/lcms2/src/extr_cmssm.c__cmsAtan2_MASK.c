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
typedef  double cmsFloat64Number ;

/* Variables and functions */
 double M_PI ; 
 double FUNC0 (double,double) ; 

__attribute__((used)) static
cmsFloat64Number FUNC1(cmsFloat64Number y, cmsFloat64Number x)
{
    cmsFloat64Number a;

    // Deal with undefined case
    if (x == 0.0 && y == 0.0) return 0;

    a = (FUNC0(y, x) * 180.0) / M_PI;

    while (a < 0) {
        a += 360;
    }

    return a;
}