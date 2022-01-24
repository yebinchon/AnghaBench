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
 double FUNC0 (double) ; 
 double FUNC1 (double) ; 
 double FUNC2 (double) ; 
 double FUNC3 (double) ; 

__attribute__((used)) static double
FUNC4(double t)
{
	double o = FUNC3(t);
	return FUNC1(FUNC0(o) - 0.00569 - 0.00478*FUNC2(FUNC1(125.04 - 1934.136*t)));
}