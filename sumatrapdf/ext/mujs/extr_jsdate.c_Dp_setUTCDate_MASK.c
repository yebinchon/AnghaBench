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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (double,double,double) ; 
 double FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (double) ; 
 double FUNC4 (double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 double FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 double FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC8(js_State *J)
{
	double t = FUNC6(J, 0);
	double y = FUNC4(t);
	double m = FUNC2(t);
	double d = FUNC7(J, 1);
	FUNC5(J, 0, FUNC0(FUNC1(y, m, d), FUNC3(t)));
}