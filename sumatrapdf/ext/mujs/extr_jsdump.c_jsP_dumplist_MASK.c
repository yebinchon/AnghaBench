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
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_5__ {scalar_t__ type; } ;
typedef  TYPE_1__ js_Ast ;

/* Variables and functions */
 scalar_t__ AST_LIST ; 
 scalar_t__ minify ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC3(js_State *J, js_Ast *prog)
{
	minify = 0;
	if (prog->type == AST_LIST)
		FUNC1(0, prog);
	else
		FUNC2(0, prog);
	FUNC0();
}