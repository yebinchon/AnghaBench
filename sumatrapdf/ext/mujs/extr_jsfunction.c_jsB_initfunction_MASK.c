#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_5__* Function_prototype; } ;
typedef  TYPE_3__ js_State ;
struct TYPE_11__ {char* name; scalar_t__ length; int /*<<< orphan*/ * constructor; int /*<<< orphan*/  function; } ;
struct TYPE_10__ {TYPE_2__ c; } ;
struct TYPE_13__ {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  Fp_apply ; 
 int /*<<< orphan*/  Fp_bind ; 
 int /*<<< orphan*/  Fp_call ; 
 int /*<<< orphan*/  Fp_toString ; 
 int /*<<< orphan*/  JS_DONTENUM ; 
 int /*<<< orphan*/  jsB_Function ; 
 int /*<<< orphan*/  jsB_Function_prototype ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_5__*) ; 

void FUNC4(js_State *J)
{
	J->Function_prototype->u.c.name = "Function.prototype";
	J->Function_prototype->u.c.function = jsB_Function_prototype;
	J->Function_prototype->u.c.constructor = NULL;
	J->Function_prototype->u.c.length = 0;

	FUNC3(J, J->Function_prototype);
	{
		FUNC0(J, "Function.prototype.toString", Fp_toString, 2);
		FUNC0(J, "Function.prototype.apply", Fp_apply, 2);
		FUNC0(J, "Function.prototype.call", Fp_call, 1);
		FUNC0(J, "Function.prototype.bind", Fp_bind, 1);
	}
	FUNC2(J, jsB_Function, jsB_Function, "Function", 1);
	FUNC1(J, "Function", JS_DONTENUM);
}