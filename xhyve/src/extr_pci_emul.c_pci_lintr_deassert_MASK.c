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
struct TYPE_2__ {scalar_t__ pin; scalar_t__ state; int /*<<< orphan*/  lock; } ;
struct pci_devinst {TYPE_1__ pi_lintr; } ;

/* Variables and functions */
 scalar_t__ ASSERTED ; 
 void* IDLE ; 
 scalar_t__ PENDING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_devinst*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void
FUNC4(struct pci_devinst *pi)
{

	FUNC0(pi->pi_lintr.pin > 0);

	FUNC2(&pi->pi_lintr.lock);
	if (pi->pi_lintr.state == ASSERTED) {
		pi->pi_lintr.state = IDLE;
		FUNC1(pi);
	} else if (pi->pi_lintr.state == PENDING)
		pi->pi_lintr.state = IDLE;
	FUNC3(&pi->pi_lintr.lock);
}