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
 int /*<<< orphan*/  COMMA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(int d, js_Ast *list)
{
	FUNC2('[');
	while (list) {
		FUNC0(list->type == AST_LIST);
		FUNC3(d, COMMA, list->a);
		list = list->b;
		if (list)
			FUNC1();
	}
	FUNC2(']');
}