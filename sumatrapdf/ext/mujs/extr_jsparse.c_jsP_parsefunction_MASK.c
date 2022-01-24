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
struct TYPE_7__ {scalar_t__ astdepth; } ;
typedef  TYPE_1__ js_State ;
typedef  int /*<<< orphan*/  js_Ast ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,char const*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__*) ; 

js_Ast *FUNC5(js_State *J, const char *filename, const char *params, const char *body)
{
	js_Ast *p = NULL;
	int line = 0;
	if (params) {
		FUNC3(J, filename, params);
		FUNC1(J);
		J->astdepth = 0;
		p = FUNC4(J);
	}
	return FUNC0(FUN, NULL, p, FUNC2(J, filename, body));
}