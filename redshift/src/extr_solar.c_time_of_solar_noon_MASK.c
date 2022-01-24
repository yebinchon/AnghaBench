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

__attribute__((used)) static double
FUNC3(double t, double lon)
{
	/* First pass uses approximate solar noon to
	   calculate equation of time. */
	double t_noon = FUNC1(FUNC2(t) - lon/360.0);
	double eq_time = FUNC0(t_noon);
	double sol_noon = 720 - 4*lon - eq_time;

	/* Recalculate using new solar noon. */
	t_noon = FUNC1(FUNC2(t) - 0.5 + sol_noon/1440.0);
	eq_time = FUNC0(t_noon);
	sol_noon = 720 - 4*lon - eq_time;

	/* No need to do more iterations */
	return sol_noon;
}