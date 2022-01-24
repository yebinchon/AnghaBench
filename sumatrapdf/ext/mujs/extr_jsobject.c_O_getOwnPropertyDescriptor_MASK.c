#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_3__ {int atts; int /*<<< orphan*/  setter; int /*<<< orphan*/  getter; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ js_Property ;
typedef  int /*<<< orphan*/  js_Object ;

/* Variables and functions */
 int JS_DONTCONF ; 
 int JS_DONTENUM ; 
 int JS_READONLY ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC11(js_State *J)
{
	js_Object *obj;
	js_Property *ref;
	if (!FUNC1(J, 1))
		FUNC10(J, "not an object");
	obj = FUNC8(J, 1);
	ref = FUNC0(J, obj, FUNC9(J, 2));
	if (!ref)
		FUNC5(J);
	else {
		FUNC2(J);
		if (!ref->getter && !ref->setter) {
			FUNC6(J, ref->value);
			FUNC7(J, -2, "value");
			FUNC3(J, !(ref->atts & JS_READONLY));
			FUNC7(J, -2, "writable");
		} else {
			if (ref->getter)
				FUNC4(J, ref->getter);
			else
				FUNC5(J);
			FUNC7(J, -2, "get");
			if (ref->setter)
				FUNC4(J, ref->setter);
			else
				FUNC5(J);
			FUNC7(J, -2, "set");
		}
		FUNC3(J, !(ref->atts & JS_DONTENUM));
		FUNC7(J, -2, "enumerable");
		FUNC3(J, !(ref->atts & JS_DONTCONF));
		FUNC7(J, -2, "configurable");
	}
}