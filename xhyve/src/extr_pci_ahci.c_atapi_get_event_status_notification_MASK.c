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
typedef  int uint32_t ;
struct ahci_port {int sense_key; int asc; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ATA_I_CMD ; 
 int ATA_I_IN ; 
 int ATA_SENSE_ILLEGAL_REQUEST ; 
 int ATA_S_DSC ; 
 int ATA_S_ERROR ; 
 int ATA_S_READY ; 
 int /*<<< orphan*/  FUNC0 (struct ahci_port*,int,int*,int) ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ahci_port*,int,int*,int*,int) ; 

__attribute__((used)) static void
FUNC5(struct ahci_port *p, int slot,
    uint8_t *cfis)
{
	uint8_t *acmd;
	uint32_t tfd;

	acmd = cfis + 0x40;

	/* we don't support asynchronous operation */
	if (!(acmd[1] & 1)) {
		p->sense_key = ATA_SENSE_ILLEGAL_REQUEST;
		p->asc = 0x24;
		tfd = (uint32_t) ((p->sense_key << 12) | ATA_S_READY | ATA_S_ERROR);
	} else {
		uint8_t buf[8];
		int len;

		len = FUNC1(acmd + 7);
		if (((size_t) len) > sizeof(buf)) {
			len = sizeof(buf);
		}

		FUNC3(buf, 0, sizeof(buf));
		FUNC2(buf, 8 - 2);
		buf[2] = 0x04;
		buf[3] = 0x10;
		buf[5] = 0x02;
		FUNC4(p, slot, cfis, buf, len);
		tfd = ATA_S_READY | ATA_S_DSC;
	}
	cfis[4] = (cfis[4] & ~7) | ATA_I_CMD | ATA_I_IN;
	FUNC0(p, slot, cfis, tfd);
}