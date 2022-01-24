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
 int /*<<< orphan*/  FUNC3 (double,double,double) ; 
 int /*<<< orphan*/  FUNC4 (double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 double FUNC6 (double) ; 
 double FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 double FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC11(js_State *J)
{
	double t = FUNC1(FUNC9(J, 0));
	double y = FUNC6(t);
	double m = FUNC10(J, 1);
	double d = FUNC7(J, 3, FUNC0(t));
	FUNC8(J, 0, FUNC5(FUNC2(FUNC3(y, m, d), FUNC4(t))));
}