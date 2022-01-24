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
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char const*) ; 

__attribute__((used)) static void FUNC4(js_State *J, js_Buffer **sb, const char *name)
{
	const char *p = name;
	if (FUNC1(*p))
		while (FUNC1(*p))
			++p;
	else if (FUNC0(*p) || *p == '_')
		while (FUNC1(*p) || FUNC0(*p) || *p == '_')
			++p;
	if (p > name && *p == 0)
		FUNC2(J, sb, name);
	else
		FUNC3(J, sb, name);
}