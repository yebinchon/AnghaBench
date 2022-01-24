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
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_3__ {char* name; int numparams; char** vartab; } ;
typedef  TYPE_1__ js_Function ;
typedef  int /*<<< orphan*/  js_Buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,char*) ; 

__attribute__((used)) static void FUNC2(js_State *J, js_Buffer **sb, js_Function *fun)
{
	int i;
	FUNC1(J, sb, "function ");
	FUNC1(J, sb, fun->name);
	FUNC0(J, sb, '(');
	for (i = 0; i < fun->numparams; ++i) {
		if (i > 0)
			FUNC1(J, sb, ", ");
		FUNC1(J, sb, fun->vartab[i]);
	}
	FUNC1(J, sb, ") { [byte code] }");
}