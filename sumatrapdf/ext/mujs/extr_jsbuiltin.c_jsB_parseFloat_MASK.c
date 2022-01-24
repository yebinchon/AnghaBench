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
 double INFINITY ; 
 double NAN ; 
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,double) ; 
 double FUNC3 (char const*,char**) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*,int) ; 

__attribute__((used)) static void FUNC6(js_State *J)
{
	const char *s = FUNC4(J, 1);
	char *e;
	double n;

	while (FUNC1(*s) || FUNC0(*s)) ++s;
	if (!FUNC5(s, "Infinity", 8))
		FUNC2(J, INFINITY);
	else if (!FUNC5(s, "+Infinity", 9))
		FUNC2(J, INFINITY);
	else if (!FUNC5(s, "-Infinity", 9))
		FUNC2(J, -INFINITY);
	else {
		n = FUNC3(s, &e);
		if (e == s)
			FUNC2(J, NAN);
		else
			FUNC2(J, n);
	}
}