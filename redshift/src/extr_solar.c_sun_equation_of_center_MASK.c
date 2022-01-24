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
 double FUNC1 (int) ; 
 double FUNC2 (double) ; 

__attribute__((used)) static double
FUNC3(double t)
{
	/* Use the first three terms of the equation. */
	double m = FUNC2(t);
	double c = FUNC1(m)*(1.914602 - t*(0.004817 + 0.000014*t)) +
		FUNC1(2*m)*(0.019993 - 0.000101*t) +
		FUNC1(3*m)*0.000289;
	return FUNC0(c);
}