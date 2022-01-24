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
 double FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (double,double,double) ; 
 int /*<<< orphan*/  FUNC2 (double,double,double,double) ; 
 double FUNC3 (double) ; 
 double FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,double) ; 
 double FUNC6 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC7(js_State *J)
{
	double y, m, d, H, M, S, ms, t;
	y = FUNC6(J, 1);
	if (y < 100) y += 1900;
	m = FUNC6(J, 2);
	d = FUNC4(J, 3, 1);
	H = FUNC4(J, 4, 0);
	M = FUNC4(J, 5, 0);
	S = FUNC4(J, 6, 0);
	ms = FUNC4(J, 7, 0);
	t = FUNC0(FUNC1(y, m, d), FUNC2(H, M, S, ms));
	t = FUNC3(t);
	FUNC5(J, t);
}