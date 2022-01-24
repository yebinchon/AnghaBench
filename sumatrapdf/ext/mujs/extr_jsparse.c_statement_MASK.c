#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_42__   TYPE_2__ ;
typedef  struct TYPE_41__   TYPE_1__ ;

/* Type definitions */
struct TYPE_41__ {int lexline; char lookahead; } ;
typedef  TYPE_1__ js_State ;
struct TYPE_42__ {scalar_t__ type; } ;
typedef  TYPE_2__ js_Ast ;

/* Variables and functions */
 scalar_t__ AST_IDENTIFIER ; 
 int /*<<< orphan*/  BREAK ; 
 int /*<<< orphan*/  CONTINUE ; 
 int /*<<< orphan*/  DEBUGGER ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DO ; 
 int /*<<< orphan*/  EMPTY ; 
 scalar_t__ EXP_IDENTIFIER ; 
 int /*<<< orphan*/  IF ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  LABEL ; 
 int /*<<< orphan*/  RETURN ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  SWITCH ; 
 int /*<<< orphan*/  THROW ; 
 char TK_BREAK ; 
 char TK_CATCH ; 
 char TK_CONTINUE ; 
 char TK_DEBUGGER ; 
 char TK_DO ; 
 char TK_ELSE ; 
 char TK_FINALLY ; 
 char TK_FOR ; 
 char TK_FUNCTION ; 
 char TK_IDENTIFIER ; 
 char TK_IF ; 
 char TK_RETURN ; 
 char TK_SWITCH ; 
 char TK_THROW ; 
 char TK_TRY ; 
 char TK_VAR ; 
 char TK_WHILE ; 
 char TK_WITH ; 
 int /*<<< orphan*/  TRY ; 
 int /*<<< orphan*/  VAR ; 
 int /*<<< orphan*/  WHILE ; 
 int /*<<< orphan*/  WITH ; 
 TYPE_2__* FUNC7 (TYPE_1__*) ; 
 TYPE_2__* FUNC8 (TYPE_1__*) ; 
 TYPE_2__* FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (TYPE_1__*,int) ; 
 TYPE_2__* FUNC11 (TYPE_1__*,int) ; 
 TYPE_2__* FUNC12 (TYPE_1__*) ; 
 TYPE_2__* FUNC13 (TYPE_1__*) ; 
 scalar_t__ FUNC14 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 TYPE_2__* FUNC20 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static js_Ast *FUNC21(js_State *J)
{
	js_Ast *a, *b, *c, *d;
	js_Ast *stm;
	int line = J->lexline;

	FUNC1();

	if (J->lookahead == '{') {
		stm = FUNC7(J);
	}

	else if (FUNC14(J, TK_VAR)) {
		a = FUNC20(J, 0);
		FUNC19(J);
		stm = FUNC3(VAR, a);
	}

	/* empty statement */
	else if (FUNC14(J, ';')) {
		stm = FUNC2(EMPTY);
	}

	else if (FUNC14(J, TK_IF)) {
		FUNC16(J, '(');
		a = FUNC9(J, 0);
		FUNC16(J, ')');
		b = FUNC21(J);
		if (FUNC14(J, TK_ELSE))
			c = FUNC21(J);
		else
			c = NULL;
		stm = FUNC5(IF, a, b, c);
	}

	else if (FUNC14(J, TK_DO)) {
		a = FUNC21(J);
		FUNC16(J, TK_WHILE);
		FUNC16(J, '(');
		b = FUNC9(J, 0);
		FUNC16(J, ')');
		FUNC19(J);
		stm = FUNC4(DO, a, b);
	}

	else if (FUNC14(J, TK_WHILE)) {
		FUNC16(J, '(');
		a = FUNC9(J, 0);
		FUNC16(J, ')');
		b = FUNC21(J);
		stm = FUNC4(WHILE, a, b);
	}

	else if (FUNC14(J, TK_FOR)) {
		stm = FUNC10(J, line);
	}

	else if (FUNC14(J, TK_CONTINUE)) {
		a = FUNC13(J);
		FUNC19(J);
		stm = FUNC3(CONTINUE, a);
	}

	else if (FUNC14(J, TK_BREAK)) {
		a = FUNC13(J);
		FUNC19(J);
		stm = FUNC3(BREAK, a);
	}

	else if (FUNC14(J, TK_RETURN)) {
		if (J->lookahead != ';' && J->lookahead != '}' && J->lookahead != 0)
			a = FUNC9(J, 0);
		else
			a = NULL;
		FUNC19(J);
		stm = FUNC3(RETURN, a);
	}

	else if (FUNC14(J, TK_WITH)) {
		FUNC16(J, '(');
		a = FUNC9(J, 0);
		FUNC16(J, ')');
		b = FUNC21(J);
		stm = FUNC4(WITH, a, b);
	}

	else if (FUNC14(J, TK_SWITCH)) {
		FUNC16(J, '(');
		a = FUNC9(J, 0);
		FUNC16(J, ')');
		FUNC16(J, '{');
		b = FUNC8(J);
		FUNC16(J, '}');
		stm = FUNC4(SWITCH, a, b);
	}

	else if (FUNC14(J, TK_THROW)) {
		a = FUNC9(J, 0);
		FUNC19(J);
		stm = FUNC3(THROW, a);
	}

	else if (FUNC14(J, TK_TRY)) {
		a = FUNC7(J);
		b = c = d = NULL;
		if (FUNC14(J, TK_CATCH)) {
			FUNC16(J, '(');
			b = FUNC12(J);
			FUNC16(J, ')');
			c = FUNC7(J);
		}
		if (FUNC14(J, TK_FINALLY)) {
			d = FUNC7(J);
		}
		if (!b && !d)
			FUNC15(J, "unexpected token in try: %s (expected 'catch' or 'finally')", FUNC18(J->lookahead));
		stm = FUNC6(TRY, a, b, c, d);
	}

	else if (FUNC14(J, TK_DEBUGGER)) {
		FUNC19(J);
		stm = FUNC2(DEBUGGER);
	}

	else if (FUNC14(J, TK_FUNCTION)) {
		FUNC17(J, "function statements are not standard");
		stm = FUNC11(J, line);
	}

	/* labelled statement or expression statement */
	else if (J->lookahead == TK_IDENTIFIER) {
		a = FUNC9(J, 0);
		if (a->type == EXP_IDENTIFIER && FUNC14(J, ':')) {
			a->type = AST_IDENTIFIER;
			b = FUNC21(J);
			stm = FUNC4(LABEL, a, b);
		} else {
			FUNC19(J);
			stm = a;
		}
	}

	/* expression statement */
	else {
		stm = FUNC9(J, 0);
		FUNC19(J);
	}

	FUNC0();
	return stm;
}