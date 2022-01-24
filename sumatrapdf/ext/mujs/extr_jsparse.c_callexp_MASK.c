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
 int /*<<< orphan*/  CALL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  INDEX ; 
 int /*<<< orphan*/  MEMBER ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char) ; 
 int /*<<< orphan*/ * FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static js_Ast *FUNC10(js_State *J)
{
	js_Ast *a = FUNC9(J);
	int line;
	FUNC3();
loop:
	FUNC1();
	line = J->lexline;
	if (FUNC7(J, '.')) { a = FUNC0(MEMBER, a, FUNC6(J)); goto loop; }
	if (FUNC7(J, '[')) { a = FUNC0(INDEX, a, FUNC5(J, 0)); FUNC8(J, ']'); goto loop; }
	if (FUNC7(J, '(')) { a = FUNC0(CALL, a, FUNC4(J)); FUNC8(J, ')'); goto loop; }
	FUNC2();
	return a;
}