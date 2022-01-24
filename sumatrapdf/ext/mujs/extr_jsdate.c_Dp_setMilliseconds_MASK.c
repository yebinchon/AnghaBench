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
 double FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (double,double,double,double) ; 
 double FUNC5 (double) ; 
 double FUNC6 (double) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 double FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC11(js_State *J)
{
	double t = FUNC2(FUNC9(J, 0));
	double h = FUNC1(t);
	double m = FUNC5(t);
	double s = FUNC6(t);
	double ms = FUNC10(J, 1);
	FUNC8(J, 0, FUNC7(FUNC3(FUNC0(t), FUNC4(h, m, s, ms))));
}