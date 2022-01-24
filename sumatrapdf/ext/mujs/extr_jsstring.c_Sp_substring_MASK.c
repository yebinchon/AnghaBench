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
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (char const*,int) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6(js_State *J)
{
	const char *str = FUNC0(J, 0);
	const char *ss, *ee;
	int len = FUNC5(str);
	int s = FUNC3(J, 1);
	int e = FUNC1(J, 2) ? FUNC3(J, 2) : len;

	s = s < 0 ? 0 : s > len ? len : s;
	e = e < 0 ? 0 : e > len ? len : e;

	if (s < e) {
		ss = FUNC4(str, s);
		ee = FUNC4(ss, e - s);
	} else {
		ss = FUNC4(str, e);
		ee = FUNC4(ss, s - e);
	}

	FUNC2(J, ss, ee - ss);
}