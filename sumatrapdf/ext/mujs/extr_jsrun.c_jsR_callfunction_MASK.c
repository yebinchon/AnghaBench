#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_Value ;
struct TYPE_22__ {int /*<<< orphan*/  strict; } ;
typedef  TYPE_1__ js_State ;
struct TYPE_23__ {int numparams; char** vartab; int varlen; scalar_t__ arguments; } ;
typedef  TYPE_2__ js_Function ;
typedef  int /*<<< orphan*/  js_Environment ;

/* Variables and functions */
 scalar_t__ BOT ; 
 int /*<<< orphan*/  JS_COBJECT ; 
 int /*<<< orphan*/  JS_DONTENUM ; 
 scalar_t__ TOP ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_1__*,int) ; 

__attribute__((used)) static void FUNC16(js_State *J, int n, js_Function *F, js_Environment *scope)
{
	js_Value v;
	int i;

	scope = FUNC0(J, FUNC4(J, JS_COBJECT, NULL), scope);

	FUNC3(J, scope);

	if (F->arguments) {
		FUNC9(J);
		if (!J->strict) {
			FUNC6(J);
			FUNC7(J, -2, "callee", JS_DONTENUM);
		}
		FUNC11(J, n);
		FUNC7(J, -2, "length", JS_DONTENUM);
		for (i = 0; i < n; ++i) {
			FUNC5(J, i + 1);
			FUNC14(J, -2, i);
		}
		FUNC8(J, "arguments", -1);
		FUNC10(J, 1);
	}

	for (i = 0; i < n && i < F->numparams; ++i)
		FUNC8(J, F->vartab[i], i + 1);
	FUNC10(J, n);

	for (; i < F->varlen; ++i) {
		FUNC12(J);
		FUNC8(J, F->vartab[i], -1);
		FUNC10(J, 1);
	}

	FUNC2(J, F);
	v = *FUNC15(J, -1);
	TOP = --BOT; /* clear stack */
	FUNC13(J, v);

	FUNC1(J);
}