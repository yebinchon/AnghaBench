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
struct TYPE_3__ {scalar_t__ type; } ;
struct sortslot {int /*<<< orphan*/ * J; TYPE_1__ v; } ;
typedef  TYPE_1__ js_Value ;
typedef  int /*<<< orphan*/  js_State ;

/* Variables and functions */
 scalar_t__ JS_TUNDEFINED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__ const) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 char* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int FUNC8 (char const*,char const*) ; 

__attribute__((used)) static int FUNC9(const void *avoid, const void *bvoid)
{
	const struct sortslot *aslot = avoid, *bslot = bvoid;
	const js_Value *a = &aslot->v, *b = &bslot->v;
	js_State *J = aslot->J;
	const char *sx, *sy;
	int c;

	int unx = (a->type == JS_TUNDEFINED);
	int uny = (b->type == JS_TUNDEFINED);
	if (unx) return !uny;
	if (uny) return -1;

	if (FUNC2(J, 1)) {
		FUNC1(J, 1); /* copy function */
		FUNC4(J);
		FUNC5(J, *a);
		FUNC5(J, *b);
		FUNC0(J, 2);
		c = FUNC6(J, -1);
		FUNC3(J, 1);
	} else {
		FUNC5(J, *a);
		FUNC5(J, *b);
		sx = FUNC7(J, -2);
		sy = FUNC7(J, -1);
		c = FUNC8(sx, sy);
		FUNC3(J, 2);
	}
	return c;
}