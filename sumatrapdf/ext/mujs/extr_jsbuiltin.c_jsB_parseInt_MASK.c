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
 double NAN ; 
 scalar_t__ FUNC0 (char const) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,double) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 double FUNC6 (char const*,char**,int) ; 

__attribute__((used)) static void FUNC7(js_State *J)
{
	const char *s = FUNC5(J, 1);
	int radix = FUNC2(J, 2) ? FUNC4(J, 2) : 10;
	double sign = 1;
	double n;
	char *e;

	while (FUNC1(*s) || FUNC0(*s))
		++s;
	if (*s == '-') {
		++s;
		sign = -1;
	} else if (*s == '+') {
		++s;
	}
	if (radix == 0) {
		radix = 10;
		if (s[0] == '0' && (s[1] == 'x' || s[1] == 'X')) {
			s += 2;
			radix = 16;
		}
	} else if (radix < 2 || radix > 36) {
		FUNC3(J, NAN);
		return;
	}
	n = FUNC6(s, &e, radix);
	if (s == e)
		FUNC3(J, NAN);
	else
		FUNC3(J, n * sign);
}