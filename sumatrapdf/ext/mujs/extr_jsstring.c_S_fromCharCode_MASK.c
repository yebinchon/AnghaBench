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
typedef  int /*<<< orphan*/  Rune ;

/* Variables and functions */
 int UTFmax ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(js_State *J)
{
	int i, top = FUNC2(J);
	Rune c;
	char *s, *p;

	s = p = FUNC3(J, (top-1) * UTFmax + 1);

	if (FUNC7(J)) {
		FUNC1(J, s);
		FUNC5(J);
	}

	for (i = 1; i < top; ++i) {
		c = FUNC6(J, i);
		p += FUNC8(p, &c);
	}
	*p = 0;
	FUNC4(J, s);

	FUNC0(J);
	FUNC1(J, s);
}