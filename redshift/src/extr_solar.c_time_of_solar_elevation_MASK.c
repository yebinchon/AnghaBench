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
 double FUNC2 (double,double,double) ; 
 double FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (double) ; 
 double FUNC5 (double) ; 

__attribute__((used)) static double
FUNC6(double t, double t_noon,
			double lat, double lon, double elev)
{
	/* First pass uses approximate sunrise to
	   calculate equation of time. */
	double eq_time = FUNC1(t_noon);
	double sol_decl = FUNC5(t_noon);
	double ha = FUNC2(lat, sol_decl, elev);
	double sol_offset = 720 - 4*(lon + FUNC0(ha)) - eq_time;

	/* Recalculate using new sunrise. */
	double t_rise = FUNC3(FUNC4(t) + sol_offset/1440.0);
	eq_time = FUNC1(t_rise);
	sol_decl = FUNC5(t_rise);
	ha = FUNC2(lat, sol_decl, elev);
	sol_offset = 720 - 4*(lon + FUNC0(ha)) - eq_time;

	/* No need to do more iterations */
	return sol_offset;
}