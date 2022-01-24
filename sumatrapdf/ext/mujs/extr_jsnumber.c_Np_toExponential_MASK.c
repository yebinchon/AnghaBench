#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_4__ {double number; } ;
struct TYPE_5__ {scalar_t__ type; TYPE_1__ u; } ;
typedef  TYPE_2__ js_Object ;

/* Variables and functions */
 scalar_t__ JS_CNUMBER ; 
 scalar_t__ FUNC0 (double) ; 
 scalar_t__ FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,double) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int,double) ; 

__attribute__((used)) static void FUNC9(js_State *J)
{
	js_Object *self = FUNC6(J, 0);
	int width = FUNC5(J, 1);
	char buf[32];
	double x;
	if (self->type != JS_CNUMBER) FUNC7(J, "not a number");
	if (width < 0) FUNC4(J, "precision %d out of range", width);
	if (width > 20) FUNC4(J, "precision %d out of range", width);
	x = self->u.number;
	if (FUNC1(x) || FUNC0(x))
		FUNC3(J, FUNC2(J, buf, x));
	else
		FUNC8(J, "%.*e", width, self->u.number);
}