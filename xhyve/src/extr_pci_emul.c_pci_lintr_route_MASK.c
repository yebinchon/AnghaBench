#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int pin; scalar_t__ ioapic_irq; scalar_t__ pirq_pin; } ;
struct pci_devinst {size_t pi_bus; size_t pi_slot; TYPE_2__ pi_lintr; } ;
struct intxinfo {scalar_t__ ii_ioapic_irq; scalar_t__ ii_pirq_pin; } ;
struct businfo {TYPE_1__* slotinfo; } ;
struct TYPE_3__ {struct intxinfo* si_intpins; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIR_INTLINE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct pci_devinst*) ; 
 struct businfo** pci_businfo ; 
 int /*<<< orphan*/  FUNC2 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct pci_devinst*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static void
FUNC5(struct pci_devinst *pi)
{
	struct businfo *bi;
	struct intxinfo *ii;

	if (pi->pi_lintr.pin == 0)
		return;

	bi = pci_businfo[pi->pi_bus];
	FUNC0(bi != NULL);
	ii = &bi->slotinfo[pi->pi_slot].si_intpins[pi->pi_lintr.pin - 1];

	/*
	 * Attempt to allocate an I/O APIC pin for this intpin if one
	 * is not yet assigned.
	 */
	if (ii->ii_ioapic_irq == 0)
		ii->ii_ioapic_irq = FUNC1(pi);
	FUNC0(ii->ii_ioapic_irq > 0);

	/*
	 * Attempt to allocate a PIRQ pin for this intpin if one is
	 * not yet assigned.
	 */
	if (ii->ii_pirq_pin == 0)
		ii->ii_pirq_pin = FUNC3(pi);
	FUNC0(ii->ii_pirq_pin > 0);

	pi->pi_lintr.ioapic_irq = ii->ii_ioapic_irq;
	pi->pi_lintr.pirq_pin = ii->ii_pirq_pin;
	FUNC2(pi, PCIR_INTLINE, ((uint8_t) FUNC4(ii->ii_pirq_pin)));
}