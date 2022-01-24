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
 double INT_MAX ; 
 double INT_MIN ; 
 double FUNC0 (double) ; 
 scalar_t__ FUNC1 (double) ; 

int FUNC2(double n)
{
	if (n == 0) return 0;
	if (FUNC1(n)) return 0;
	n = (n < 0) ? -FUNC0(-n) : FUNC0(n);
	if (n < INT_MIN) return INT_MIN;
	if (n > INT_MAX) return INT_MAX;
	return (int)n;
}