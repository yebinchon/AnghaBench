#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct vm {int dummy; } ;
struct vatpic {TYPE_1__* atpic; } ;
struct TYPE_2__ {int irq_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vatpic*) ; 
 int /*<<< orphan*/  FUNC1 (struct vatpic*) ; 
 int /*<<< orphan*/  FUNC2 (struct vatpic*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 struct vatpic* FUNC4 (struct vm*) ; 

void
FUNC5(struct vm *vm, int vector)
{
	struct vatpic *vatpic;
	int pin;

	vatpic = FUNC4(vm);

	FUNC0(vatpic);

	pin = vector & 0x7;

	if ((vector & ~0x7) == vatpic->atpic[1].irq_base) {
		FUNC3(&vatpic->atpic[1], pin);
		/*
		 * If this vector originated from the slave,
		 * accept the cascaded interrupt too.
		 */
		FUNC3(&vatpic->atpic[0], 2);
	} else {
		FUNC3(&vatpic->atpic[0], pin);
	}

	FUNC2(vatpic);

	FUNC1(vatpic);
}