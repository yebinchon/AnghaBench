#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int lexline; scalar_t__ lookahead; int /*<<< orphan*/  number; int /*<<< orphan*/  text; } ;
typedef  TYPE_1__ js_State ;
struct TYPE_20__ {int /*<<< orphan*/  number; } ;
typedef  TYPE_2__ js_Ast ;

/* Variables and functions */
 int /*<<< orphan*/  ARRAY ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXP_IDENTIFIER ; 
 int /*<<< orphan*/  EXP_NUMBER ; 
 int /*<<< orphan*/  EXP_REGEXP ; 
 int /*<<< orphan*/  EXP_STRING ; 
 int /*<<< orphan*/ * FALSE ; 
 int /*<<< orphan*/  OBJECT ; 
 int /*<<< orphan*/ * THIS ; 
 char TK_FALSE ; 
 scalar_t__ TK_IDENTIFIER ; 
 char TK_NULL ; 
 scalar_t__ TK_NUMBER ; 
 scalar_t__ TK_REGEXP ; 
 scalar_t__ TK_STRING ; 
 char TK_THIS ; 
 char TK_TRUE ; 
 int /*<<< orphan*/ * TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_2__* FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char) ; 
 TYPE_2__* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static js_Ast *FUNC12(js_State *J)
{
	js_Ast *a;
	int line = J->lexline;

	if (J->lookahead == TK_IDENTIFIER) {
		a = FUNC8(J, EXP_IDENTIFIER, J->text);
		FUNC9(J);
		return a;
	}
	if (J->lookahead == TK_STRING) {
		a = FUNC8(J, EXP_STRING, J->text);
		FUNC9(J);
		return a;
	}
	if (J->lookahead == TK_REGEXP) {
		a = FUNC8(J, EXP_REGEXP, J->text);
		a->number = J->number;
		FUNC9(J);
		return a;
	}
	if (J->lookahead == TK_NUMBER) {
		a = FUNC7(J, EXP_NUMBER, J->number);
		FUNC9(J);
		return a;
	}

	if (FUNC4(J, TK_THIS)) return FUNC0(THIS);
	if (FUNC4(J, TK_NULL)) return FUNC0(NULL);
	if (FUNC4(J, TK_TRUE)) return FUNC0(TRUE);
	if (FUNC4(J, TK_FALSE)) return FUNC0(FALSE);
	if (FUNC4(J, '{')) {
		a = FUNC1(OBJECT, FUNC11(J));
		FUNC6(J, '}');
		return a;
	}
	if (FUNC4(J, '[')) {
		a = FUNC1(ARRAY, FUNC2(J));
		FUNC6(J, ']');
		return a;
	}
	if (FUNC4(J, '(')) {
		a = FUNC3(J, 0);
		FUNC6(J, ')');
		return a;
	}

	FUNC5(J, "unexpected token in expression: %s", FUNC10(J->lookahead));
}