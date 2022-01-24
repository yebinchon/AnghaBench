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
struct TYPE_5__ {scalar_t__ type; struct TYPE_5__* b; struct TYPE_5__* a; } ;
typedef  TYPE_1__ js_Ast ;

/* Variables and functions */
 scalar_t__ STM_CASE ; 
 scalar_t__ STM_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,TYPE_1__*) ; 

__attribute__((used)) static void FUNC6(int d, js_Ast *list)
{
	while (list) {
		js_Ast *stm = list->a;
		if (stm->type == STM_CASE) {
			FUNC0(d); FUNC4("case "); FUNC3(d, stm->a); FUNC2(':'); FUNC1();
			FUNC5(d, stm->b);
		}
		if (stm->type == STM_DEFAULT) {
			FUNC0(d); FUNC4("default:"); FUNC1();
			FUNC5(d, stm->a);
		}
		list = list->b;
	}
}