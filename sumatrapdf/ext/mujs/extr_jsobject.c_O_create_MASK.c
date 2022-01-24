#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_7__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_8__ {TYPE_7__* properties; } ;
typedef  TYPE_1__ js_Object ;
struct TYPE_9__ {scalar_t__ level; } ;

/* Variables and functions */
 int /*<<< orphan*/  JS_COBJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_7__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC8(js_State *J)
{
	js_Object *obj;
	js_Object *proto;
	js_Object *props;

	if (FUNC4(J, 1))
		proto = FUNC6(J, 1);
	else if (FUNC3(J, 1))
		proto = NULL;
	else
		FUNC7(J, "not an object or null");

	obj = FUNC1(J, JS_COBJECT, proto);
	FUNC5(J, obj);

	if (FUNC2(J, 2)) {
		if (!FUNC4(J, 2))
			FUNC7(J, "not an object");
		props = FUNC6(J, 2);
		if (props->properties->level)
			FUNC0(J, obj, props->properties);
	}
}