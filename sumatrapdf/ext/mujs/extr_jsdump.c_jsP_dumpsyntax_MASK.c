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
 int minify ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 

void FUNC4(js_State *J, js_Ast *prog, int dominify)
{
	minify = dominify;
	if (prog->type == AST_LIST)
		FUNC2(-1, prog);
	else {
		FUNC1(0, prog);
		FUNC0();
	}
	if (minify > 1)
		FUNC3('\n');
}