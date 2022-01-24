#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  Function_prototype; } ;
typedef  TYPE_3__ js_State ;
struct TYPE_14__ {char const* name; int length; void* constructor; void* function; } ;
struct TYPE_15__ {TYPE_1__ c; } ;
struct TYPE_17__ {TYPE_2__ u; } ;
typedef  TYPE_4__ js_Object ;
typedef  void* js_CFunction ;

/* Variables and functions */
 int /*<<< orphan*/  JS_CCFUNCTION ; 
 int JS_DONTCONF ; 
 int JS_DONTENUM ; 
 int JS_READONLY ; 
 TYPE_4__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

void FUNC6(js_State *J, js_CFunction cfun, js_CFunction ccon, const char *name, int length)
{
	js_Object *obj = FUNC0(J, JS_CCFUNCTION, J->Function_prototype);
	obj->u.c.name = name;
	obj->u.c.function = cfun;
	obj->u.c.constructor = ccon;
	obj->u.c.length = length;
	FUNC4(J, obj); /* proto obj */
	{
		FUNC3(J, length);
		FUNC2(J, -2, "length", JS_READONLY | JS_DONTENUM | JS_DONTCONF);
		FUNC5(J); /* obj proto */
		FUNC1(J, -2); /* obj proto obj */
		FUNC2(J, -2, "constructor", JS_DONTENUM);
		FUNC2(J, -2, "prototype", JS_READONLY | JS_DONTENUM | JS_DONTCONF);
	}
}