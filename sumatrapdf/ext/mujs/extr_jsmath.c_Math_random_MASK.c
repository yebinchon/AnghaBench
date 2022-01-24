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
struct TYPE_4__ {int /*<<< orphan*/  seed; } ;
typedef  TYPE_1__ js_State ;

/* Variables and functions */
 double JS_RAND_MAX ; 
 double FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,double) ; 

__attribute__((used)) static void FUNC2(js_State *J)
{
	FUNC1(J, FUNC0(&J->seed) / (JS_RAND_MAX + 1.0));
}