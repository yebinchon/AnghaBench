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
typedef  int /*<<< orphan*/  js_Buffer ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *,char*,double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*) ; 
 scalar_t__ FUNC2 (double) ; 

__attribute__((used)) static void FUNC3(js_State *J, js_Buffer **sb, double n)
{
	char buf[40];
	if (n == 0 && FUNC2(n))
		FUNC1(J, sb, "-0");
	else
		FUNC1(J, sb, FUNC0(J, buf, n));
}