#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  Number_prototype; } ;
typedef  TYPE_2__ js_State ;
struct TYPE_8__ {double number; } ;
struct TYPE_10__ {TYPE_1__ u; } ;
typedef  TYPE_3__ js_Object ;

/* Variables and functions */
 int /*<<< orphan*/  JS_CNUMBER ; 
 TYPE_3__* FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static js_Object *FUNC1(js_State *J, double v)
{
	js_Object *obj = FUNC0(J, JS_CNUMBER, J->Number_prototype);
	obj->u.number = v;
	return obj;
}