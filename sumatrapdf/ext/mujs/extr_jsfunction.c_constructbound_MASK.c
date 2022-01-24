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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC8(js_State *J)
{
	int top = FUNC6(J);
	int i, fun, args, n;

	fun = FUNC6(J);
	FUNC2(J);
	FUNC5(J, fun, "__TargetFunction__");

	args = FUNC6(J);
	FUNC5(J, fun, "__BoundArguments__");
	n = FUNC4(J, args);
	for (i = 0; i < n; ++i)
		FUNC3(J, args, i);
	FUNC7(J, args);

	for (i = 1; i < top; ++i)
		FUNC1(J, i);

	FUNC0(J, n + top - 1);
}