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
 int /*<<< orphan*/  BITNOT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DELETE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  LOGNOT ; 
 int /*<<< orphan*/  NEG ; 
 int /*<<< orphan*/  POS ; 
 int /*<<< orphan*/  PREDEC ; 
 int /*<<< orphan*/  PREINC ; 
 char TK_DEC ; 
 char TK_DELETE ; 
 char TK_INC ; 
 char TK_TYPEOF ; 
 char TK_VOID ; 
 int /*<<< orphan*/  TYPEOF ; 
 int /*<<< orphan*/  VOID ; 
 scalar_t__ FUNC3 (TYPE_1__*,char) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static js_Ast *FUNC5(js_State *J)
{
	js_Ast *a;
	int line = J->lexline;
	FUNC2();
	if (FUNC3(J, TK_DELETE)) a = FUNC1(DELETE, FUNC5(J));
	else if (FUNC3(J, TK_VOID)) a = FUNC1(VOID, FUNC5(J));
	else if (FUNC3(J, TK_TYPEOF)) a = FUNC1(TYPEOF, FUNC5(J));
	else if (FUNC3(J, TK_INC)) a = FUNC1(PREINC, FUNC5(J));
	else if (FUNC3(J, TK_DEC)) a = FUNC1(PREDEC, FUNC5(J));
	else if (FUNC3(J, '+')) a = FUNC1(POS, FUNC5(J));
	else if (FUNC3(J, '-')) a = FUNC1(NEG, FUNC5(J));
	else if (FUNC3(J, '~')) a = FUNC1(BITNOT, FUNC5(J));
	else if (FUNC3(J, '!')) a = FUNC1(LOGNOT, FUNC5(J));
	else a = FUNC4(J);
	FUNC0();
	return a;
}