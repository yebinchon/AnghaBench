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
 scalar_t__ FUNC1 (double) ; 
 scalar_t__ FUNC2 (double) ; 

__attribute__((used)) static double FUNC3(double x)
{
	if (FUNC2(x)) return x;
	if (FUNC1(x)) return x;
	if (x == 0) return x;
	if (x > 0 && x < 0.5) return 0;
	if (x < 0 && x >= -0.5) return -0;
	return FUNC0(x + 0.5);
}