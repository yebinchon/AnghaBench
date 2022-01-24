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
struct TYPE_10__ {int type; struct TYPE_10__* b; struct TYPE_10__* a; struct TYPE_10__* d; struct TYPE_10__* c; } ;
typedef  TYPE_1__ js_Ast ;

/* Variables and functions */
#define  AST_FUNDEC 146 
 int STM_BLOCK ; 
#define  STM_BREAK 145 
#define  STM_CONTINUE 144 
#define  STM_DEBUGGER 143 
#define  STM_DO 142 
#define  STM_EMPTY 141 
#define  STM_FOR 140 
#define  STM_FOR_IN 139 
#define  STM_FOR_IN_VAR 138 
#define  STM_FOR_VAR 137 
#define  STM_IF 136 
#define  STM_LABEL 135 
#define  STM_RETURN 134 
#define  STM_SWITCH 133 
#define  STM_THROW 132 
#define  STM_TRY 131 
#define  STM_VAR 130 
#define  STM_WHILE 129 
#define  STM_WITH 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  minify ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12(int d, js_Ast *stm)
{
	if (stm->type == STM_BLOCK) {
		FUNC3(d, stm);
		return;
	}

	FUNC0(d);

	switch (stm->type) {
	case AST_FUNDEC:
		FUNC7("function ");
		FUNC6(d, stm->a);
		FUNC4('(');
		FUNC2(d, stm->b);
		FUNC4(')'); FUNC11(); FUNC4('{'); FUNC1();
		FUNC9(d, stm->c);
		FUNC0(d); FUNC4('}');
		break;

	case STM_EMPTY:
		FUNC4(';');
		break;

	case STM_VAR:
		FUNC7("var ");
		FUNC10(d, stm->a);
		FUNC4(';');
		break;

	case STM_IF:
		FUNC7("if"); FUNC11(); FUNC4('('); FUNC6(d, stm->a); FUNC4(')');
		FUNC8(d, stm->b);
		if (stm->c) {
			FUNC1(); FUNC0(d); FUNC7("else");
			FUNC8(d, stm->c);
		}
		break;

	case STM_DO:
		FUNC7("do");
		FUNC8(d, stm->a);
		FUNC1();
		FUNC0(d); FUNC7("while"); FUNC11(); FUNC4('('); FUNC6(d, stm->b); FUNC4(')'); FUNC4(';');
		break;

	case STM_WHILE:
		FUNC7("while"); FUNC11(); FUNC4('('); FUNC6(d, stm->a); FUNC4(')');
		FUNC8(d, stm->b);
		break;

	case STM_FOR:
		FUNC7("for"); FUNC11(); FUNC4('(');
		FUNC6(d, stm->a); FUNC4(';'); FUNC11();
		FUNC6(d, stm->b); FUNC4(';'); FUNC11();
		FUNC6(d, stm->c); FUNC4(')');
		FUNC8(d, stm->d);
		break;
	case STM_FOR_VAR:
		FUNC7("for"); FUNC11(); FUNC7("(var ");
		FUNC10(d, stm->a); FUNC4(';'); FUNC11();
		FUNC6(d, stm->b); FUNC4(';'); FUNC11();
		FUNC6(d, stm->c); FUNC4(')');
		FUNC8(d, stm->d);
		break;
	case STM_FOR_IN:
		FUNC7("for"); FUNC11(); FUNC4('(');
		FUNC6(d, stm->a); FUNC7(" in ");
		FUNC6(d, stm->b); FUNC4(')');
		FUNC8(d, stm->c);
		break;
	case STM_FOR_IN_VAR:
		FUNC7("for"); FUNC11(); FUNC7("(var ");
		FUNC10(d, stm->a); FUNC7(" in ");
		FUNC6(d, stm->b); FUNC4(')');
		FUNC8(d, stm->c);
		break;

	case STM_CONTINUE:
		FUNC7("continue");
		if (stm->a) {
			FUNC4(' '); FUNC6(d, stm->a);
		}
		FUNC4(';');
		break;

	case STM_BREAK:
		FUNC7("break");
		if (stm->a) {
			FUNC4(' '); FUNC6(d, stm->a);
		}
		FUNC4(';');
		break;

	case STM_RETURN:
		FUNC7("return");
		if (stm->a) {
			FUNC4(' '); FUNC6(d, stm->a);
		}
		FUNC4(';');
		break;

	case STM_WITH:
		FUNC7("with"); FUNC11(); FUNC4('('); FUNC6(d, stm->a); FUNC4(')');
		FUNC8(d, stm->b);
		break;

	case STM_SWITCH:
		FUNC7("switch"); FUNC11(); FUNC4('(');
		FUNC6(d, stm->a);
		FUNC4(')'); FUNC11(); FUNC4('{'); FUNC1();
		FUNC5(d, stm->b);
		FUNC0(d); FUNC4('}');
		break;

	case STM_THROW:
		FUNC7("throw "); FUNC6(d, stm->a); FUNC4(';');
		break;

	case STM_TRY:
		FUNC7("try");
		if (minify && stm->a->type != STM_BLOCK)
			FUNC4(' ');
		FUNC8(d, stm->a);
		if (stm->b && stm->c) {
			FUNC1(); FUNC0(d); FUNC7("catch"); FUNC11(); FUNC4('('); FUNC6(d, stm->b); FUNC4(')');
			FUNC8(d, stm->c);
		}
		if (stm->d) {
			FUNC1(); FUNC0(d); FUNC7("finally");
			FUNC8(d, stm->d);
		}
		break;

	case STM_LABEL:
		FUNC6(d, stm->a); FUNC4(':'); FUNC11(); FUNC12(d, stm->b);
		break;

	case STM_DEBUGGER:
		FUNC7("debugger");
		FUNC4(';');
		break;

	default:
		FUNC6(d, stm);
		FUNC4(';');
	}
}