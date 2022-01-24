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
 double FUNC1 (double,double,double) ; 
 double FUNC2 (double) ; 
 double FUNC3 (double) ; 
 double FUNC4 (double) ; 
 double FUNC5 (double) ; 

__attribute__((used)) static double
FUNC6(double t, double lat, double lon)
{
	/* Minutes from midnight */
	double jd = FUNC3(t);
	double offset = (jd - FUNC4(jd) - 0.5)*1440.0;

	double eq_time = FUNC2(t);
	double ha = FUNC0((720 - offset - eq_time)/4 - lon);
	double decl = FUNC5(t);
	return FUNC1(lat, decl, ha);
}