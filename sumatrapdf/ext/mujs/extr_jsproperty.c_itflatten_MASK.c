#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_4__ {struct TYPE_4__* prototype; int /*<<< orphan*/ * properties; } ;
typedef  TYPE_1__ js_Object ;
typedef  int /*<<< orphan*/  js_Iterator ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  sentinel ; 

__attribute__((used)) static js_Iterator *FUNC1(js_State *J, js_Object *obj)
{
	js_Iterator *iter = NULL;
	if (obj->prototype)
		iter = FUNC1(J, obj->prototype);
	if (obj->properties != &sentinel)
		iter = FUNC0(J, iter, obj->properties, obj->prototype);
	return iter;
}