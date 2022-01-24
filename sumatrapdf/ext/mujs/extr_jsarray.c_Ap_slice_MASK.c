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
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(js_State *J)
{
	int len, s, e, n;
	double sv, ev;

	FUNC3(J);

	len = FUNC0(J, 0);
	sv = FUNC5(J, 1);
	ev = FUNC2(J, 2) ? FUNC5(J, 2) : len;

	if (sv < 0) sv = sv + len;
	if (ev < 0) ev = ev + len;

	s = sv < 0 ? 0 : sv > len ? len : sv;
	e = ev < 0 ? 0 : ev > len ? len : ev;

	for (n = 0; s < e; ++s, ++n)
		if (FUNC1(J, 0, s))
			FUNC4(J, -2, n);
}