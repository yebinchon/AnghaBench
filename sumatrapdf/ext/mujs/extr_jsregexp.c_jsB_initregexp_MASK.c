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
struct TYPE_7__ {int /*<<< orphan*/  RegExp_prototype; } ;
typedef  TYPE_1__ js_State ;

/* Variables and functions */
 int /*<<< orphan*/  JS_DONTENUM ; 
 int /*<<< orphan*/  Rp_exec ; 
 int /*<<< orphan*/  Rp_test ; 
 int /*<<< orphan*/  Rp_toString ; 
 int /*<<< orphan*/  jsB_RegExp ; 
 int /*<<< orphan*/  jsB_new_RegExp ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC4(js_State *J)
{
	FUNC3(J, J->RegExp_prototype);
	{
		FUNC0(J, "RegExp.prototype.toString", Rp_toString, 0);
		FUNC0(J, "RegExp.prototype.test", Rp_test, 0);
		FUNC0(J, "RegExp.prototype.exec", Rp_exec, 0);
	}
	FUNC2(J, jsB_RegExp, jsB_new_RegExp, "RegExp", 1);
	FUNC1(J, "RegExp", JS_DONTENUM);
}