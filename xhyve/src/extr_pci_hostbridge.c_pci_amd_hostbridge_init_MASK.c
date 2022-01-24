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
struct pci_devinst {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIR_DEVICE ; 
 int /*<<< orphan*/  PCIR_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (struct pci_devinst*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_devinst*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct pci_devinst *pi, char *opts)
{
	(void) FUNC0(pi, opts);
	FUNC1(pi, PCIR_VENDOR, 0x1022);	/* AMD */
	FUNC1(pi, PCIR_DEVICE, 0x7432);	/* made up */

	return (0);
}