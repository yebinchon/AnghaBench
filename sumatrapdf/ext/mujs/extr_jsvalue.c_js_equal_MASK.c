#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ number; scalar_t__ boolean; scalar_t__ object; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_1__ u; } ;
typedef  TYPE_2__ js_Value ;
typedef  int /*<<< orphan*/  js_State ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  JS_HNONE ; 
 scalar_t__ JS_TBOOLEAN ; 
 scalar_t__ JS_TNULL ; 
 scalar_t__ JS_TNUMBER ; 
 scalar_t__ JS_TOBJECT ; 
 scalar_t__ JS_TUNDEFINED ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(js_State *J)
{
	js_Value *x = FUNC4(J, -2);
	js_Value *y = FUNC4(J, -1);

retry:
	if (FUNC0(x) && FUNC0(y))
		return !FUNC5(FUNC1(x), FUNC1(y));
	if (x->type == y->type) {
		if (x->type == JS_TUNDEFINED) return 1;
		if (x->type == JS_TNULL) return 1;
		if (x->type == JS_TNUMBER) return x->u.number == y->u.number;
		if (x->type == JS_TBOOLEAN) return x->u.boolean == y->u.boolean;
		if (x->type == JS_TOBJECT) return x->u.object == y->u.object;
		return 0;
	}

	if (x->type == JS_TNULL && y->type == JS_TUNDEFINED) return 1;
	if (x->type == JS_TUNDEFINED && y->type == JS_TNULL) return 1;

	if (x->type == JS_TNUMBER && FUNC0(y))
		return x->u.number == FUNC2(J, y);
	if (FUNC0(x) && y->type == JS_TNUMBER)
		return FUNC2(J, x) == y->u.number;

	if (x->type == JS_TBOOLEAN) {
		x->type = JS_TNUMBER;
		x->u.number = x->u.boolean;
		goto retry;
	}
	if (y->type == JS_TBOOLEAN) {
		y->type = JS_TNUMBER;
		y->u.number = y->u.boolean;
		goto retry;
	}
	if ((FUNC0(x) || x->type == JS_TNUMBER) && y->type == JS_TOBJECT) {
		FUNC3(J, y, JS_HNONE);
		goto retry;
	}
	if (x->type == JS_TOBJECT && (FUNC0(y) || y->type == JS_TNUMBER)) {
		FUNC3(J, x, JS_HNONE);
		goto retry;
	}

	return 0;
}