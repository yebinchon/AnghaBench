#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  GE; } ;
typedef  TYPE_1__ js_State ;
typedef  int /*<<< orphan*/  js_Function ;
struct TYPE_21__ {int /*<<< orphan*/ * s; } ;
typedef  TYPE_2__ js_Buffer ;
typedef  int /*<<< orphan*/  js_Ast ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__**,char) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_2__**,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 char* FUNC11 (TYPE_1__*,int) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC13(js_State *J)
{
	int i, top = FUNC5(J);
	js_Buffer *sb = NULL;
	const char *body;
	js_Ast *parse;
	js_Function *fun;

	if (FUNC12(J)) {
		FUNC4(J, sb);
		FUNC1(J);
		FUNC10(J);
	}

	/* p1, p2, ..., pn */
	if (top > 2) {
		for (i = 1; i < top - 1; ++i) {
			if (i > 1)
				FUNC8(J, &sb, ',');
			FUNC9(J, &sb, FUNC11(J, i));
		}
		FUNC8(J, &sb, ')');
		FUNC8(J, &sb, 0);
	}

	/* body */
	body = FUNC6(J, top - 1) ? FUNC11(J, top - 1) : "";

	parse = FUNC2(J, "[string]", sb ? sb->s : NULL, body);
	fun = FUNC0(J, parse);

	FUNC3(J);
	FUNC4(J, sb);
	FUNC1(J);

	FUNC7(J, fun, J->GE);
}