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
typedef  void* uint8_t ;
struct TYPE_2__ {scalar_t__ ioapic_irq; scalar_t__ pirq_pin; int /*<<< orphan*/  state; scalar_t__ pin; int /*<<< orphan*/  lock; } ;
struct pci_devinst {int /*<<< orphan*/  pi_name; struct pci_devemu* pi_d; TYPE_1__ pi_lintr; void* pi_func; void* pi_slot; void* pi_bus; } ;
struct pci_devemu {char* pe_emu; int (* pe_init ) (struct pci_devinst*,int /*<<< orphan*/ ) ;} ;
struct funcinfo {struct pci_devinst* fi_devi; int /*<<< orphan*/  fi_param; } ;

/* Variables and functions */
 int /*<<< orphan*/  IDLE ; 
 int PCIM_CMD_BUSMASTEREN ; 
 int PCIM_CMD_MEMEN ; 
 int PCIM_CMD_PORTEN ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 int /*<<< orphan*/  PCIR_INTLINE ; 
 int /*<<< orphan*/  PCIR_INTPIN ; 
 int /*<<< orphan*/  PI_NAMESZ ; 
 struct pci_devinst* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_devinst*) ; 
 int /*<<< orphan*/  FUNC2 (struct pci_devinst*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC5 (struct pci_devinst*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct pci_devemu *pde, int bus, int slot,
    int func, struct funcinfo *fi)
{
	struct pci_devinst *pdi;
	int err;

	pdi = FUNC0(1, sizeof(struct pci_devinst));

	pdi->pi_bus = (uint8_t) bus;
	pdi->pi_slot = (uint8_t) slot;
	pdi->pi_func = (uint8_t) func;
	FUNC3(&pdi->pi_lintr.lock, NULL);
	pdi->pi_lintr.pin = 0;
	pdi->pi_lintr.state = IDLE;
	pdi->pi_lintr.pirq_pin = 0;
	pdi->pi_lintr.ioapic_irq = 0;
	pdi->pi_d = pde;
	FUNC4(pdi->pi_name, PI_NAMESZ, "%s-pci-%d", pde->pe_emu, slot);

	/* Disable legacy interrupts */
	FUNC2(pdi, PCIR_INTLINE, 255);
	FUNC2(pdi, PCIR_INTPIN, 0);

	FUNC2(pdi, PCIR_COMMAND,
		    PCIM_CMD_PORTEN | PCIM_CMD_MEMEN | PCIM_CMD_BUSMASTEREN);

	err = (*pde->pe_init)(pdi, fi->fi_param);
	if (err == 0)
		fi->fi_devi = pdi;
	else
		FUNC1(pdi);

	return (err);
}