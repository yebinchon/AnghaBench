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
 int FUNC0 (double) ; 
 int FUNC1 (int) ; 
 double FUNC2 (double) ; 
 double FUNC3 (double) ; 
 double FUNC4 (int /*<<< orphan*/ ,double) ; 
 double FUNC5 (int) ; 
 double FUNC6 (double) ; 
 double FUNC7 (double) ; 
 int /*<<< orphan*/  FUNC8 (double) ; 

__attribute__((used)) static double
FUNC9(double t)
{
	double epsilon = FUNC3(t);
	double l_0 = FUNC7(t);
	double e = FUNC2(t);
	double m = FUNC6(t);
	double y = FUNC4(FUNC8(epsilon/2.0), 2.0);

	double eq_time = y*FUNC5(2*l_0) - 2*e*FUNC5(m) +
		4*e*y*FUNC5(m)*FUNC1(2*l_0) -
		0.5*y*y*FUNC5(4*l_0) -
		1.25*e*e*FUNC5(2*m);
	return 4*FUNC0(eq_time);
}