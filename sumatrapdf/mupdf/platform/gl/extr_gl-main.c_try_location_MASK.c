#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  js_State ;
struct TYPE_4__ {void* page; void* chapter; } ;
typedef  TYPE_1__ fz_location ;

/* Variables and functions */
 TYPE_1__ FUNC0 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static fz_location FUNC5(js_State *J)
{
	fz_location loc;
	if (FUNC2(J, -1))
		loc = FUNC0(0, FUNC4(J, -1, 1) - 1);
	else
	{
		FUNC1(J, -1, 0);
		loc.chapter = FUNC4(J, -1, 1) - 1;
		FUNC3(J, 1);
		FUNC1(J, -1, 1);
		loc.page = FUNC4(J, -1, 1) - 1;
		FUNC3(J, 1);
	}
	return loc;
}