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
typedef  TYPE_1__* js_Ast ;

/* Variables and functions */
 int /*<<< orphan*/  BITXOR ; 
 TYPE_1__** FUNC0 (int /*<<< orphan*/ ,TYPE_1__**,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_1__*,char) ; 

__attribute__((used)) static js_Ast *FUNC5(js_State *J, int notin)
{
	js_Ast *a = FUNC0(J, notin);
	FUNC3();
	int line = J->lexline;
	while (FUNC4(J, '^')) {
		FUNC1();
		a = FUNC0(BITXOR, a, FUNC0(J, notin));
		line = J->lexline;
	}
	FUNC2();
	return a;
}