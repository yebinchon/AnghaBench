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
 double FUNC0 (int) ; 
 double FUNC1 (double) ; 
 int FUNC2 (double) ; 
 double FUNC3 (double) ; 

__attribute__((used)) static double
FUNC4(double t)
{
	double e = FUNC1(t);
	double lambda = FUNC3(t);
	return FUNC0(FUNC2(e)*FUNC2(lambda));
}