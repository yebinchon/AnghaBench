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
 double FUNC2 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 
 double FUNC4 (char const*,char**,int) ; 

double FUNC5(js_State *J, const char *s)
{
	char *e;
	double n;
	while (FUNC1(*s) || FUNC0(*s)) ++s;
	if (s[0] == '0' && (s[1] == 'x' || s[1] == 'X') && s[2] != 0)
		n = FUNC4(s + 2, &e, 16);
	else if (!FUNC3(s, "Infinity", 8))
		n = INFINITY, e = (char*)s + 8;
	else if (!FUNC3(s, "+Infinity", 9))
		n = INFINITY, e = (char*)s + 9;
	else if (!FUNC3(s, "-Infinity", 9))
		n = -INFINITY, e = (char*)s + 9;
	else
		n = FUNC2(s, &e);
	while (FUNC1(*e) || FUNC0(*e)) ++e;
	if (*e) return NAN;
	return n;
}