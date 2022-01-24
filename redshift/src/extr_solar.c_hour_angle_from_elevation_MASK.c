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
 double FUNC2 (double,double) ; 
 int FUNC3 (double) ; 
 double FUNC4 (double) ; 
 int FUNC5 (double) ; 

__attribute__((used)) static double
FUNC6(double lat, double decl, double elev)
{
	double omega = FUNC1((FUNC3(FUNC4(elev)) - FUNC5(FUNC0(lat))*FUNC5(decl))/
			    (FUNC3(FUNC0(lat))*FUNC3(decl)));
	return FUNC2(omega, -elev);
}