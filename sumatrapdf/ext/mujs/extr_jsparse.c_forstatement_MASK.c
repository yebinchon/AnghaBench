#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char lookahead; } ;
typedef  TYPE_1__ js_State ;
typedef  int /*<<< orphan*/  js_Ast ;

/* Variables and functions */
 int /*<<< orphan*/  FOR ; 
 int /*<<< orphan*/  FOR_IN ; 
 int /*<<< orphan*/  FOR_IN_VAR ; 
 int /*<<< orphan*/  FOR_VAR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char TK_IN ; 
 char TK_VAR ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,char) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*,int) ; 

__attribute__((used)) static js_Ast *FUNC10(js_State *J, int line)
{
	js_Ast *a, *b, *c, *d;
	FUNC6(J, '(');
	if (FUNC4(J, TK_VAR)) {
		a = FUNC9(J, 1);
		if (FUNC4(J, ';')) {
			b = FUNC3(J, ';');
			c = FUNC3(J, ')');
			d = FUNC8(J);
			return FUNC1(FOR_VAR, a, b, c, d);
		}
		if (FUNC4(J, TK_IN)) {
			b = FUNC2(J, 0);
			FUNC6(J, ')');
			c = FUNC8(J);
			return FUNC0(FOR_IN_VAR, a, b, c);
		}
		FUNC5(J, "unexpected token in for-var-statement: %s", FUNC7(J->lookahead));
	}

	if (J->lookahead != ';')
		a = FUNC2(J, 1);
	else
		a = NULL;
	if (FUNC4(J, ';')) {
		b = FUNC3(J, ';');
		c = FUNC3(J, ')');
		d = FUNC8(J);
		return FUNC1(FOR, a, b, c, d);
	}
	if (FUNC4(J, TK_IN)) {
		b = FUNC2(J, 0);
		FUNC6(J, ')');
		c = FUNC8(J);
		return FUNC0(FOR_IN, a, b, c);
	}
	FUNC5(J, "unexpected token in for-statement: %s", FUNC7(J->lookahead));
}