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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GE ; 
 int /*<<< orphan*/  GT ; 
 int /*<<< orphan*/  IN ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  INSTANCEOF ; 
 int /*<<< orphan*/  LE ; 
 int /*<<< orphan*/  LT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char TK_GE ; 
 char TK_IN ; 
 char TK_INSTANCEOF ; 
 char TK_LE ; 
 scalar_t__ FUNC4 (TYPE_1__*,char) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static js_Ast *FUNC6(js_State *J, int notin)
{
	js_Ast *a = FUNC5(J);
	int line;
	FUNC3();
loop:
	FUNC1();
	line = J->lexline;
	if (FUNC4(J, '<')) { a = FUNC0(LT, a, FUNC5(J)); goto loop; }
	if (FUNC4(J, '>')) { a = FUNC0(GT, a, FUNC5(J)); goto loop; }
	if (FUNC4(J, TK_LE)) { a = FUNC0(LE, a, FUNC5(J)); goto loop; }
	if (FUNC4(J, TK_GE)) { a = FUNC0(GE, a, FUNC5(J)); goto loop; }
	if (FUNC4(J, TK_INSTANCEOF)) { a = FUNC0(INSTANCEOF, a, FUNC5(J)); goto loop; }
	if (!notin && FUNC4(J, TK_IN)) { a = FUNC0(IN, a, FUNC5(J)); goto loop; }
	FUNC2();
	return a;
}