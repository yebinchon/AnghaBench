#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  E; } ;
typedef  TYPE_5__ js_State ;
typedef  int /*<<< orphan*/  js_Function ;
struct TYPE_16__ {TYPE_3__* object; } ;
struct TYPE_13__ {int /*<<< orphan*/ * function; } ;
struct TYPE_14__ {TYPE_1__ f; } ;
struct TYPE_15__ {TYPE_2__ u; } ;
struct TYPE_12__ {TYPE_4__ u; } ;

/* Variables and functions */
 int BOT ; 
 TYPE_11__* STACK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

void FUNC5(js_State *J, int pc)
{
	if (pc > 0) {
		js_Function *F = STACK[BOT-1].u.object->u.f.function;
		FUNC4("trap at %d in function ", pc);
		FUNC0(J, F);
	}
	FUNC2(J);
	FUNC1(J, J->E, 0);
	FUNC3(J);
}