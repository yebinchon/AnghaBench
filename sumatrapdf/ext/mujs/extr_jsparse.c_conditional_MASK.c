#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int lexline; } ;
typedef  TYPE_1__ js_State ;
typedef  int /*<<< orphan*/  js_Ast ;

/* Variables and functions */
 int /*<<< orphan*/  COND ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*,int) ; 

__attribute__((used)) static js_Ast *FUNC7(js_State *J, int notin)
{
	js_Ast *a = FUNC6(J, notin);
	int line = J->lexline;
	if (FUNC4(J, '?')) {
		js_Ast *b, *c;
		FUNC2();
		b = FUNC3(J, 0);
		FUNC5(J, ':');
		c = FUNC3(J, notin);
		FUNC0();
		return FUNC1(COND, a, b, c);
	}
	return a;
}