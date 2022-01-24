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
typedef  scalar_t__ uint64_t ;
struct TYPE_2__ {scalar_t__ msg_data; int /*<<< orphan*/  addr; } ;
struct pci_devinst {TYPE_1__ pi_msi; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct pci_devinst*) ; 
 int FUNC1 (struct pci_devinst*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

void
FUNC3(struct pci_devinst *pi, int index)
{

	if (FUNC0(pi) && index < FUNC1(pi)) {
		FUNC2(pi->pi_msi.addr, pi->pi_msi.msg_data +
			((uint64_t) index));
	}
}