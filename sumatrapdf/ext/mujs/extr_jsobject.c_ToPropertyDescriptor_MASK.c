#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
typedef  int /*<<< orphan*/  js_Object ;

/* Variables and functions */
 int JS_DONTCONF ; 
 int JS_DONTENUM ; 
 int JS_READONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,char const*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC8(js_State *J, js_Object *obj, const char *name, js_Object *desc)
{
	int haswritable = 0;
	int hasvalue = 0;
	int enumerable = 0;
	int configurable = 0;
	int writable = 0;
	int atts = 0;

	FUNC3(J, obj);
	FUNC3(J, desc);

	if (FUNC1(J, -1, "writable")) {
		haswritable = 1;
		writable = FUNC6(J, -1);
		FUNC2(J, 1);
	}
	if (FUNC1(J, -1, "enumerable")) {
		enumerable = FUNC6(J, -1);
		FUNC2(J, 1);
	}
	if (FUNC1(J, -1, "configurable")) {
		configurable = FUNC6(J, -1);
		FUNC2(J, 1);
	}
	if (FUNC1(J, -1, "value")) {
		hasvalue = 1;
		FUNC5(J, -3, name);
	}

	if (!writable) atts |= JS_READONLY;
	if (!enumerable) atts |= JS_DONTENUM;
	if (!configurable) atts |= JS_DONTCONF;

	if (FUNC1(J, -1, "get")) {
		if (haswritable || hasvalue)
			FUNC7(J, "value/writable and get/set attributes are exclusive");
	} else {
		FUNC4(J);
	}

	if (FUNC1(J, -2, "set")) {
		if (haswritable || hasvalue)
			FUNC7(J, "value/writable and get/set attributes are exclusive");
	} else {
		FUNC4(J);
	}

	FUNC0(J, -4, name, atts);

	FUNC2(J, 2);
}