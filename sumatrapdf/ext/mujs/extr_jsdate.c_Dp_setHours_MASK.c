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
 double FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (double,double,double,double) ; 
 int /*<<< orphan*/  FUNC4 (double) ; 
 int /*<<< orphan*/  FUNC5 (double) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 double FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 double FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (double) ; 

__attribute__((used)) static void FUNC12(js_State *J)
{
	double t = FUNC1(FUNC9(J, 0));
	double h = FUNC10(J, 1);
	double m = FUNC7(J, 2, FUNC4(t));
	double s = FUNC7(J, 3, FUNC5(t));
	double ms = FUNC7(J, 4, FUNC11(t));
	FUNC8(J, 0, FUNC6(FUNC2(FUNC0(t), FUNC3(h, m, s, ms))));
}