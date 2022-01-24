#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  Object_prototype; } ;
typedef  TYPE_1__ js_State ;

/* Variables and functions */
 int /*<<< orphan*/  JSON_parse ; 
 int /*<<< orphan*/  JSON_stringify ; 
 int /*<<< orphan*/  JS_CJSON ; 
 int /*<<< orphan*/  JS_DONTENUM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC4(js_State *J)
{
	FUNC3(J, FUNC1(J, JS_CJSON, J->Object_prototype));
	{
		FUNC0(J, "JSON.parse", JSON_parse, 2);
		FUNC0(J, "JSON.stringify", JSON_stringify, 3);
	}
	FUNC2(J, "JSON", JS_DONTENUM);
}