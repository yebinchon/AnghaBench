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

__attribute__((used)) static int FUNC4(double d)
{
	double two32 = 4294967296.0;
	double two31 = 2147483648.0;

	if (!FUNC3(d) || d == 0)
		return 0;

	d = FUNC2(d, two32);
	d = d >= 0 ? FUNC1(d) : FUNC0(d) + two32;
	if (d >= two31)
		return d - two32;
	else
		return d;
}