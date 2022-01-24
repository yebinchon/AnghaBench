#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int lexline; } ;
typedef  TYPE_1__ js_State ;
typedef  int /*<<< orphan*/  js_Ast ;

/* Variables and functions */
 int /*<<< orphan*/  ASS ; 
 int /*<<< orphan*/  ASS_ADD ; 
 int /*<<< orphan*/  ASS_BITAND ; 
 int /*<<< orphan*/  ASS_BITOR ; 
 int /*<<< orphan*/  ASS_BITXOR ; 
 int /*<<< orphan*/  ASS_DIV ; 
 int /*<<< orphan*/  ASS_MOD ; 
 int /*<<< orphan*/  ASS_MUL ; 
 int /*<<< orphan*/  ASS_SHL ; 
 int /*<<< orphan*/  ASS_SHR ; 
 int /*<<< orphan*/  ASS_SUB ; 
 int /*<<< orphan*/  ASS_USHR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char TK_ADD_ASS ; 
 char TK_AND_ASS ; 
 char TK_DIV_ASS ; 
 char TK_MOD_ASS ; 
 char TK_MUL_ASS ; 
 char TK_OR_ASS ; 
 char TK_SHL_ASS ; 
 char TK_SHR_ASS ; 
 char TK_SUB_ASS ; 
 char TK_USHR_ASS ; 
 char TK_XOR_ASS ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char) ; 

__attribute__((used)) static js_Ast *FUNC5(js_State *J, int notin)
{
	js_Ast *a = FUNC3(J, notin);
	int line = J->lexline;
	FUNC2();
	if (FUNC4(J, '=')) a = FUNC1(ASS, a, FUNC5(J, notin));
	else if (FUNC4(J, TK_MUL_ASS)) a = FUNC1(ASS_MUL, a, FUNC5(J, notin));
	else if (FUNC4(J, TK_DIV_ASS)) a = FUNC1(ASS_DIV, a, FUNC5(J, notin));
	else if (FUNC4(J, TK_MOD_ASS)) a = FUNC1(ASS_MOD, a, FUNC5(J, notin));
	else if (FUNC4(J, TK_ADD_ASS)) a = FUNC1(ASS_ADD, a, FUNC5(J, notin));
	else if (FUNC4(J, TK_SUB_ASS)) a = FUNC1(ASS_SUB, a, FUNC5(J, notin));
	else if (FUNC4(J, TK_SHL_ASS)) a = FUNC1(ASS_SHL, a, FUNC5(J, notin));
	else if (FUNC4(J, TK_SHR_ASS)) a = FUNC1(ASS_SHR, a, FUNC5(J, notin));
	else if (FUNC4(J, TK_USHR_ASS)) a = FUNC1(ASS_USHR, a, FUNC5(J, notin));
	else if (FUNC4(J, TK_AND_ASS)) a = FUNC1(ASS_BITAND, a, FUNC5(J, notin));
	else if (FUNC4(J, TK_XOR_ASS)) a = FUNC1(ASS_BITXOR, a, FUNC5(J, notin));
	else if (FUNC4(J, TK_OR_ASS)) a = FUNC1(ASS_BITOR, a, FUNC5(J, notin));
	FUNC0();
	return a;
}