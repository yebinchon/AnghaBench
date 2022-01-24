#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int lexline; int /*<<< orphan*/  lookahead; } ;
typedef  TYPE_1__ js_State ;
typedef  int /*<<< orphan*/  js_Ast ;

/* Variables and functions */
 int /*<<< orphan*/  CASE ; 
 int /*<<< orphan*/  DEFAULT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TK_CASE ; 
 int /*<<< orphan*/  TK_DEFAULT ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static js_Ast *FUNC8(js_State *J)
{
	js_Ast *a, *b;
	int line = J->lexline;

	if (FUNC3(J, TK_CASE)) {
		a = FUNC2(J, 0);
		FUNC5(J, ':');
		b = FUNC7(J);
		return FUNC1(CASE, a, b);
	}

	if (FUNC3(J, TK_DEFAULT)) {
		FUNC5(J, ':');
		a = FUNC7(J);
		return FUNC0(DEFAULT, a);
	}

	FUNC4(J, "unexpected token in switch: %s (expected 'case' or 'default')", FUNC6(J->lookahead));
}