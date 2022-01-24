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
 int /*<<< orphan*/  FUNC0 (double,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 double FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(js_State *J)
{
	double y = FUNC2(J, 1);
	double x = FUNC2(J, 2);
	FUNC1(J, FUNC0(y, x));
}