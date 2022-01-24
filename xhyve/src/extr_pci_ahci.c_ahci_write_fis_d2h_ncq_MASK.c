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
typedef  scalar_t__ uint8_t ;
struct ahci_port {int tfd; int ci; } ;
typedef  int /*<<< orphan*/  fis ;

/* Variables and functions */
 int ATA_S_DSC ; 
 int ATA_S_READY ; 
 scalar_t__ FIS_TYPE_REGD2H ; 
 int /*<<< orphan*/  FUNC0 (struct ahci_port*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct ahci_port *p, int slot)
{
	uint8_t fis[20];

	p->tfd = ATA_S_READY | ATA_S_DSC;
	FUNC1(fis, 0, sizeof(fis));
	fis[0] = FIS_TYPE_REGD2H;
	fis[1] = 0; /* No interrupt */
	fis[2] = (uint8_t) p->tfd; /* Status */
	fis[3] = 0; /* No error */
	p->ci &= ~(1 << slot);
	FUNC0(p, FIS_TYPE_REGD2H, fis);
}