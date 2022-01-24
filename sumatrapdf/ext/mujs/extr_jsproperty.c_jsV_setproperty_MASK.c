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
struct TYPE_8__ {scalar_t__ strict; } ;
typedef  TYPE_1__ js_State ;
typedef  int /*<<< orphan*/  js_Property ;
struct TYPE_9__ {int /*<<< orphan*/  properties; int /*<<< orphan*/  extensible; } ;
typedef  TYPE_2__ js_Object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*) ; 

js_Property *FUNC3(js_State *J, js_Object *obj, const char *name)
{
	js_Property *result;

	if (!obj->extensible) {
		result = FUNC2(obj->properties, name);
		if (J->strict && !result)
			FUNC1(J, "object is non-extensible");
		return result;
	}

	obj->properties = FUNC0(J, obj, obj->properties, name, &result);

	return result;
}