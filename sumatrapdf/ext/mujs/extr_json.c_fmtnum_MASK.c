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
 scalar_t__ FUNC0 (double) ; 
 scalar_t__ FUNC1 (double) ; 
 char* FUNC2 (int /*<<< orphan*/ *,char*,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*) ; 

__attribute__((used)) static void FUNC4(js_State *J, js_Buffer **sb, double n)
{
	if (FUNC1(n)) FUNC3(J, sb, "null");
	else if (FUNC0(n)) FUNC3(J, sb, "null");
	else if (n == 0) FUNC3(J, sb, "0");
	else {
		char buf[40];
		FUNC3(J, sb, FUNC2(J, buf, n));
	}
}