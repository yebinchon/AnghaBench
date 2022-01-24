#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int lexline; } ;
typedef  TYPE_1__ js_State ;
typedef  int /*<<< orphan*/  js_Ast ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NEW ; 
 char TK_FUNCTION ; 
 char TK_NEW ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static js_Ast *FUNC8(js_State *J)
{
	js_Ast *a, *b;
	int line = J->lexline;

	if (FUNC4(J, TK_NEW)) {
		a = FUNC6(J);
		if (FUNC4(J, '(')) {
			b = FUNC2(J);
			FUNC5(J, ')');
			return FUNC1(NEW, a, b);
		}
		return FUNC0(NEW, a);
	}

	if (FUNC4(J, TK_FUNCTION))
		return FUNC3(J, line);

	return FUNC7(J);
}