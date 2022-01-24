#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_12__ {char* name; } ;
struct TYPE_11__ {TYPE_5__* function; } ;
struct TYPE_13__ {TYPE_2__ c; TYPE_1__ f; } ;
struct TYPE_14__ {scalar_t__ type; TYPE_3__ u; } ;
typedef  TYPE_4__ js_Object ;
struct TYPE_15__ {char* name; int numparams; char** vartab; } ;
typedef  TYPE_5__ js_Function ;
struct TYPE_16__ {int /*<<< orphan*/  s; } ;
typedef  TYPE_6__ js_Buffer ;

/* Variables and functions */
 scalar_t__ JS_CCFUNCTION ; 
 scalar_t__ JS_CFUNCTION ; 
 scalar_t__ JS_CSCRIPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_6__**,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_6__**,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC11(js_State *J)
{
	js_Object *self = FUNC8(J, 0);
	js_Buffer *sb = NULL;
	int i;

	if (!FUNC2(J, 0))
		FUNC10(J, "not a function");

	if (self->type == JS_CFUNCTION || self->type == JS_CSCRIPT) {
		js_Function *F = self->u.f.function;

		if (FUNC9(J)) {
			FUNC1(J, sb);
			FUNC7(J);
		}

		FUNC6(J, &sb, "function ");
		FUNC6(J, &sb, F->name);
		FUNC5(J, &sb, '(');
		for (i = 0; i < F->numparams; ++i) {
			if (i > 0) FUNC5(J, &sb, ',');
			FUNC6(J, &sb, F->vartab[i]);
		}
		FUNC6(J, &sb, ") { [byte code] }");
		FUNC5(J, &sb, 0);

		FUNC4(J, sb->s);
		FUNC0(J);
		FUNC1(J, sb);
	} else if (self->type == JS_CCFUNCTION) {
		if (FUNC9(J)) {
			FUNC1(J, sb);
			FUNC7(J);
		}

		FUNC6(J, &sb, "function ");
		FUNC6(J, &sb, self->u.c.name);
		FUNC6(J, &sb, "() { [native code] }");
		FUNC5(J, &sb, 0);

		FUNC4(J, sb->s);
		FUNC0(J);
		FUNC1(J, sb);
	} else {
		FUNC3(J, "function () { }");
	}
}