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
 int JS_DONTCONF ; 
 int JS_DONTENUM ; 
 int JS_READONLY ; 
 int /*<<< orphan*/  callbound ; 
 int /*<<< orphan*/  constructbound ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC10(js_State *J)
{
	int i, top = FUNC4(J);
	int n;

	if (!FUNC5(J, 0))
		FUNC9(J, "not a function");

	n = FUNC2(J, 0);
	if (n > top - 2)
		n -= top - 2;
	else
		n = 0;

	/* Reuse target function's prototype for HasInstance check. */
	FUNC3(J, 0, "prototype");
	FUNC7(J, callbound, constructbound, "[bind]", n);

	/* target function */
	FUNC0(J, 0);
	FUNC1(J, -2, "__TargetFunction__", JS_READONLY | JS_DONTENUM | JS_DONTCONF);

	/* bound this */
	FUNC0(J, 1);
	FUNC1(J, -2, "__BoundThis__", JS_READONLY | JS_DONTENUM | JS_DONTCONF);

	/* bound arguments */
	FUNC6(J);
	for (i = 2; i < top; ++i) {
		FUNC0(J, i);
		FUNC8(J, -2, i - 2);
	}
	FUNC1(J, -2, "__BoundArguments__", JS_READONLY | JS_DONTENUM | JS_DONTCONF);
}