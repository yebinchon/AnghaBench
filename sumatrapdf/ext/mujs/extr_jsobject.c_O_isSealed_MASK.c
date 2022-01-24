#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_4__ {TYPE_3__* properties; scalar_t__ extensible; } ;
typedef  TYPE_1__ js_Object ;
struct TYPE_5__ {scalar_t__ level; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC5(js_State *J)
{
	js_Object *obj;

	if (!FUNC1(J, 1))
		FUNC4(J, "not an object");

	obj = FUNC3(J, 1);
	if (obj->extensible) {
		FUNC2(J, 0);
		return;
	}

	if (obj->properties->level)
		FUNC2(J, FUNC0(J, obj->properties));
	else
		FUNC2(J, 1);
}