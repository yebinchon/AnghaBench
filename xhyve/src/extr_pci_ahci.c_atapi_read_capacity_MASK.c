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
typedef  int uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
struct ahci_port {int /*<<< orphan*/  bctx; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ATA_I_CMD ; 
 int ATA_I_IN ; 
 int ATA_S_DSC ; 
 int ATA_S_READY ; 
 int /*<<< orphan*/  FUNC0 (struct ahci_port*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahci_port*,int,int*,int*,int) ; 

__attribute__((used)) static void
FUNC4(struct ahci_port *p, int slot, uint8_t *cfis)
{
	uint8_t buf[8];
	uint64_t sectors;

	sectors = (uint64_t) (FUNC2(p->bctx) / 2048);
	FUNC1(buf, ((uint32_t) (sectors - 1)));
	FUNC1(buf + 4, 2048);
	cfis[4] = (cfis[4] & ~7) | ATA_I_CMD | ATA_I_IN;
	FUNC3(p, slot, cfis, buf, sizeof(buf));
	FUNC0(p, slot, cfis, ATA_S_READY | ATA_S_DSC);
}