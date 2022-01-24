#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {TYPE_4__* Object_prototype; int /*<<< orphan*/  tracetop; } ;
typedef  TYPE_3__ js_State ;
struct TYPE_24__ {scalar_t__ constructor; int /*<<< orphan*/  length; int /*<<< orphan*/  name; } ;
struct TYPE_25__ {TYPE_1__ c; } ;
struct TYPE_27__ {scalar_t__ type; TYPE_2__ u; } ;
typedef  TYPE_4__ js_Object ;

/* Variables and functions */
 int BOT ; 
 scalar_t__ JS_CCFUNCTION ; 
 int /*<<< orphan*/  JS_COBJECT ; 
 int TOP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int) ; 
 TYPE_4__* FUNC11 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int) ; 

void FUNC14(js_State *J, int n)
{
	js_Object *obj;
	js_Object *prototype;
	js_Object *newobj;

	if (!FUNC5(J, -n-1))
		FUNC12(J, "%s is not callable", FUNC13(J, -n-1));

	obj = FUNC11(J, -n-1);

	/* built-in constructors create their own objects, give them a 'null' this */
	if (obj->type == JS_CCFUNCTION && obj->u.c.constructor) {
		int savebot = BOT;
		FUNC8(J);
		if (n > 0)
			FUNC10(J, n + 1);
		BOT = TOP - n - 1;

		FUNC1(J, obj->u.c.name, "native", 0);
		FUNC0(J, n, obj->u.c.length, obj->u.c.constructor);
		--J->tracetop;

		BOT = savebot;
		return;
	}

	/* extract the function object's prototype property */
	FUNC4(J, -n - 1, "prototype");
	if (FUNC6(J, -1))
		prototype = FUNC11(J, -1);
	else
		prototype = J->Object_prototype;
	FUNC7(J, 1);

	/* create a new object with above prototype, and shift it into the 'this' slot */
	newobj = FUNC2(J, JS_COBJECT, prototype);
	FUNC9(J, newobj);
	if (n > 0)
		FUNC10(J, n + 1);

	/* call the function */
	FUNC3(J, n);

	/* if result is not an object, return the original object we created */
	if (!FUNC6(J, -1)) {
		FUNC7(J, 1);
		FUNC9(J, newobj);
	}
}