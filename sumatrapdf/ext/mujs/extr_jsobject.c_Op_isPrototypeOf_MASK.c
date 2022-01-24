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
struct TYPE_3__ {struct TYPE_3__* prototype; } ;
typedef  TYPE_1__ js_Object ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(js_State *J)
{
	js_Object *self = FUNC2(J, 0);
	if (FUNC0(J, 1)) {
		js_Object *V = FUNC2(J, 1);
		do {
			V = V->prototype;
			if (V == self) {
				FUNC1(J, 1);
				return;
			}
		} while (V);
	}
	FUNC1(J, 0);
}