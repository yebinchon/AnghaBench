#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_5__ {int /*<<< orphan*/  object; } ;
struct TYPE_6__ {scalar_t__ type; TYPE_1__ u; } ;
struct TYPE_7__ {int atts; struct TYPE_7__* right; scalar_t__ level; TYPE_2__ value; int /*<<< orphan*/  name; struct TYPE_7__* left; } ;
typedef  TYPE_3__ js_Property ;
typedef  int /*<<< orphan*/  js_Object ;

/* Variables and functions */
 int JS_DONTENUM ; 
 scalar_t__ JS_TOBJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC2(js_State *J, js_Object *obj, js_Property *ref)
{
	if (ref->left->level)
		FUNC2(J, obj, ref->left);
	if (!(ref->atts & JS_DONTENUM)) {
		if (ref->value.type != JS_TOBJECT)
			FUNC1(J, "not an object");
		FUNC0(J, obj, ref->name, ref->value.u.object);
	}
	if (ref->right->level)
		FUNC2(J, obj, ref->right);
}