#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_6__ {int length; } ;
struct TYPE_7__ {TYPE_1__ s; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__ u; TYPE_5__* properties; } ;
typedef  TYPE_3__ js_Object ;
struct TYPE_9__ {scalar_t__ level; } ;

/* Variables and functions */
 scalar_t__ JS_CSTRING ; 
 int FUNC0 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC7(js_State *J)
{
	js_Object *obj;
	int i, k;

	if (!FUNC1(J, 1))
		FUNC6(J, "not an object");
	obj = FUNC5(J, 1);

	FUNC2(J);

	if (obj->properties->level)
		i = FUNC0(J, obj->properties, 0);
	else
		i = 0;

	if (obj->type == JS_CSTRING) {
		for (k = 0; k < obj->u.s.length; ++k) {
			FUNC3(J, k);
			FUNC4(J, -2, i++);
		}
	}
}