#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_Value ;
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_4__ {int varlen; int /*<<< orphan*/ * vartab; } ;
typedef  TYPE_1__ js_Function ;
typedef  int /*<<< orphan*/  js_Environment ;

/* Variables and functions */
 scalar_t__ BOT ; 
 scalar_t__ TOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC8(js_State *J, int n, js_Function *F, js_Environment *scope)
{
	js_Value v;
	int i;

	if (scope)
		FUNC2(J, scope);

	/* scripts take no arguments */
	FUNC4(J, n);

	for (i = 0; i < F->varlen; ++i) {
		FUNC5(J);
		FUNC3(J, F->vartab[i], -1);
		FUNC4(J, 1);
	}

	FUNC1(J, F);
	v = *FUNC7(J, -1);
	TOP = --BOT; /* clear stack */
	FUNC6(J, v);

	if (scope)
		FUNC0(J);
}