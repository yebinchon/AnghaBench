#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  Function_prototype; } ;
typedef  TYPE_3__ js_State ;
struct TYPE_16__ {int /*<<< orphan*/ * scope; TYPE_5__* function; } ;
struct TYPE_17__ {TYPE_1__ f; } ;
struct TYPE_19__ {TYPE_2__ u; } ;
typedef  TYPE_4__ js_Object ;
struct TYPE_20__ {int /*<<< orphan*/  numparams; } ;
typedef  TYPE_5__ js_Function ;
typedef  int /*<<< orphan*/  js_Environment ;

/* Variables and functions */
 int /*<<< orphan*/  JS_CFUNCTION ; 
 int JS_DONTCONF ; 
 int JS_DONTENUM ; 
 int JS_READONLY ; 
 TYPE_4__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_4__*) ; 

void FUNC6(js_State *J, js_Function *fun, js_Environment *scope)
{
	js_Object *obj = FUNC0(J, JS_CFUNCTION, J->Function_prototype);
	obj->u.f.function = fun;
	obj->u.f.scope = scope;
	FUNC5(J, obj);
	{
		FUNC4(J, fun->numparams);
		FUNC2(J, -2, "length", JS_READONLY | JS_DONTENUM | JS_DONTCONF);
		FUNC3(J);
		{
			FUNC1(J, -2);
			FUNC2(J, -2, "constructor", JS_DONTENUM);
		}
		FUNC2(J, -2, "prototype", JS_DONTCONF);
	}
}