#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lexchar; } ;
typedef  TYPE_1__ js_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 double FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static double FUNC4(js_State *J)
{
	double n = 0;
	if (!FUNC1(J->lexchar))
		FUNC0(J, "malformed hexadecimal number");
	while (FUNC1(J->lexchar)) {
		n = n * 16 + FUNC3(J->lexchar);
		FUNC2(J);
	}
	return n;
}