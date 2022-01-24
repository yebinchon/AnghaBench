#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {char* litstr; TYPE_4__* object; } ;
struct TYPE_16__ {scalar_t__ type; TYPE_1__ u; } ;
typedef  TYPE_2__ js_Value ;
struct TYPE_17__ {scalar_t__ strict; } ;
typedef  TYPE_3__ js_State ;
struct TYPE_18__ {scalar_t__ type; } ;
typedef  TYPE_4__ js_Object ;

/* Variables and functions */
 scalar_t__ JS_CDATE ; 
 int JS_HNONE ; 
 int JS_HNUMBER ; 
 int JS_HSTRING ; 
 scalar_t__ JS_TLITSTR ; 
 scalar_t__ JS_TOBJECT ; 
 scalar_t__ FUNC0 (TYPE_3__*,TYPE_4__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 TYPE_2__* FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 

void FUNC5(js_State *J, js_Value *v, int preferred)
{
	js_Object *obj;

	if (v->type != JS_TOBJECT)
		return;

	obj = v->u.object;

	if (preferred == JS_HNONE)
		preferred = obj->type == JS_CDATE ? JS_HSTRING : JS_HNUMBER;

	if (preferred == JS_HSTRING) {
		if (FUNC0(J, obj) || FUNC1(J, obj)) {
			*v = *FUNC3(J, -1);
			FUNC2(J, 1);
			return;
		}
	} else {
		if (FUNC1(J, obj) || FUNC0(J, obj)) {
			*v = *FUNC3(J, -1);
			FUNC2(J, 1);
			return;
		}
	}

	if (J->strict)
		FUNC4(J, "cannot convert object to primitive");

	v->type = JS_TLITSTR;
	v->u.litstr = "[object]";
	return;
}