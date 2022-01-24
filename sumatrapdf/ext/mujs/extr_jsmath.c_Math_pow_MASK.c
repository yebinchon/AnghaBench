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
 int /*<<< orphan*/  NAN ; 
 int FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 double FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (double,double) ; 

__attribute__((used)) static void FUNC5(js_State *J)
{
	double x = FUNC3(J, 1);
	double y = FUNC3(J, 2);
	if (!FUNC1(y) && FUNC0(x) == 1)
		FUNC2(J, NAN);
	else
		FUNC2(J, FUNC4(x,y));
}