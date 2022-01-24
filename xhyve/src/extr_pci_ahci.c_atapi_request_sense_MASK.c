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
struct ahci_port {int sense_key; int asc; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ATA_I_CMD ; 
 int ATA_I_IN ; 
 int ATA_S_DSC ; 
 int ATA_S_READY ; 
 int /*<<< orphan*/  FUNC0 (struct ahci_port*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ahci_port*,int,int*,int*,int) ; 

__attribute__((used)) static void
FUNC3(struct ahci_port *p, int slot, uint8_t *cfis)
{
	uint8_t buf[64];
	uint8_t *acmd;
	int len;

	acmd = cfis + 0x40;
	len = acmd[4];
	if (((size_t) len) > sizeof(buf))
		len = sizeof(buf);
	FUNC1(buf, 0, len);
	buf[0] = 0x70 | (1 << 7);
	buf[2] = p->sense_key;
	buf[7] = 10;
	buf[12] = p->asc;
	FUNC2(p, slot, cfis, buf, len);
	cfis[4] = (cfis[4] & ~7) | ATA_I_CMD | ATA_I_IN;
	FUNC0(p, slot, cfis, ATA_S_READY | ATA_S_DSC);
}