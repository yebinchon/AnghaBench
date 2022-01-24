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
struct TYPE_3__ {int atts; struct TYPE_3__* right; scalar_t__ level; int /*<<< orphan*/  name; int /*<<< orphan*/  value; struct TYPE_3__* left; } ;
typedef  TYPE_1__ js_Property ;

/* Variables and functions */
 int JS_DONTENUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(js_State *J, js_Property *ref)
{
	if (ref->left->level)
		FUNC4(J, ref->left);
	if (!(ref->atts & JS_DONTENUM)) {
		FUNC2(J, ref->value);
		FUNC0(J, FUNC3(J, 1), ref->name, FUNC3(J, -1));
		FUNC1(J, 1);
	}
	if (ref->right->level)
		FUNC4(J, ref->right);
}