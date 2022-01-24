#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_4__* Boolean_prototype; } ;
typedef  TYPE_2__ js_State ;
struct TYPE_9__ {scalar_t__ boolean; } ;
struct TYPE_11__ {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  Bp_toString ; 
 int /*<<< orphan*/  Bp_valueOf ; 
 int /*<<< orphan*/  JS_DONTENUM ; 
 int /*<<< orphan*/  jsB_Boolean ; 
 int /*<<< orphan*/  jsB_new_Boolean ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_4__*) ; 

void FUNC4(js_State *J)
{
	J->Boolean_prototype->u.boolean = 0;

	FUNC3(J, J->Boolean_prototype);
	{
		FUNC0(J, "Boolean.prototype.toString", Bp_toString, 0);
		FUNC0(J, "Boolean.prototype.valueOf", Bp_valueOf, 0);
	}
	FUNC2(J, jsB_Boolean, jsB_new_Boolean, "Boolean", 1);
	FUNC1(J, "Boolean", JS_DONTENUM);
}