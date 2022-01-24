#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct pciecap {int pcie_capabilities; int link_capabilities; int link_status; int /*<<< orphan*/  capid; } ;
struct pci_devinst {int dummy; } ;
typedef  int /*<<< orphan*/  pciecap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PCIECAP_VERSION ; 
 int PCIEM_TYPE_ROOT_PORT ; 
 int /*<<< orphan*/  PCIY_EXPRESS ; 
 int /*<<< orphan*/  FUNC1 (struct pciecap*,int) ; 
 int FUNC2 (struct pci_devinst*,int /*<<< orphan*/ *,int) ; 

int
FUNC3(struct pci_devinst *pi, int type)
{
	int err;
	struct pciecap pciecap;

	FUNC0(sizeof(struct pciecap) == 60);

	if (type != PCIEM_TYPE_ROOT_PORT)
		return (-1);

	FUNC1(&pciecap, sizeof(pciecap));

	pciecap.capid = PCIY_EXPRESS;
	pciecap.pcie_capabilities = PCIECAP_VERSION | PCIEM_TYPE_ROOT_PORT;
	pciecap.link_capabilities = 0x411;	/* gen1, x1 */
	pciecap.link_status = 0x11;		/* gen1, x1 */

	err = FUNC2(pi, (u_char *)&pciecap, sizeof(pciecap));
	return (err);
}