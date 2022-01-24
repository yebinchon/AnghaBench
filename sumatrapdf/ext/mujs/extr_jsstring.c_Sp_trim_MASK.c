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
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4(js_State *J)
{
	const char *s, *e;
	s = FUNC0(J, 0);
	while (FUNC1(*s))
		++s;
	e = s + FUNC3(s);
	while (e > s && FUNC1(e[-1]))
		--e;
	FUNC2(J, s, e - s);
}