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
 double FUNC2 (double,double) ; 
 int /*<<< orphan*/  FUNC3 (double) ; 

int FUNC4(double n)
{
	double two32 = 4294967296.0;
	double two31 = 2147483648.0;

	if (!FUNC3(n) || n == 0)
		return 0;

	n = FUNC2(n, two32);
	n = n >= 0 ? FUNC1(n) : FUNC0(n) + two32;
	if (n >= two31)
		return n - two32;
	else
		return n;
}