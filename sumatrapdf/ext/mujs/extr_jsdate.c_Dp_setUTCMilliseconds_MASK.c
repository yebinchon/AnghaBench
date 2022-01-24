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
typedef  int /*<<< orphan*/  js_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double) ; 
 double FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (double,double,double,double) ; 
 double FUNC4 (double) ; 
 double FUNC5 (double) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 double FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(js_State *J)
{
	double t = FUNC7(J, 0);
	double h = FUNC1(t);
	double m = FUNC4(t);
	double s = FUNC5(t);
	double ms = FUNC8(J, 1);
	FUNC6(J, 0, FUNC2(FUNC0(t), FUNC3(h, m, s, ms)));
}