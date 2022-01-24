#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ type; struct TYPE_3__* b; int /*<<< orphan*/  a; } ;
typedef  TYPE_1__ js_Ast ;

/* Variables and functions */
 scalar_t__ AST_LIST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(int d, js_Ast *list)
{
	FUNC4("[\n");
	FUNC1(d+1);
	while (list) {
		FUNC0(list->type == AST_LIST);
		FUNC5(d+1, list->a);
		list = list->b;
		if (list) {
			FUNC2();
			FUNC1(d+1);
		}
	}
	FUNC2(); FUNC1(d); FUNC3(']');
}