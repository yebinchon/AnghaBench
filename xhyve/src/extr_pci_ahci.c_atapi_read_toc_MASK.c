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
typedef  int /*<<< orphan*/  uint16_t ;
struct ahci_port {int sense_key; int asc; int /*<<< orphan*/  bctx; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ATA_I_CMD ; 
 int ATA_I_IN ; 
 void* ATA_SENSE_ILLEGAL_REQUEST ; 
 int ATA_S_DSC ; 
 int ATA_S_ERROR ; 
 int ATA_S_READY ; 
 int /*<<< orphan*/  FUNC0 (struct ahci_port*,int,int*,int) ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ahci_port*,int,int*,int*,int) ; 

__attribute__((used)) static void
FUNC9(struct ahci_port *p, int slot, uint8_t *cfis)
{
	uint8_t *acmd;
	uint8_t format;
	int len;

	acmd = cfis + 0x40;

	len = FUNC1(acmd + 7);
	format = acmd[9] >> 6;
	switch (format) {
	case 0:
	{
		int msf, size;
		uint64_t sectors;
		uint8_t start_track, buf[20], *bp;

		msf = (acmd[1] >> 1) & 1;
		start_track = acmd[6];
		if (start_track > 1 && start_track != 0xaa) {
			uint32_t tfd;
			p->sense_key = ATA_SENSE_ILLEGAL_REQUEST;
			p->asc = 0x24;
			tfd = (uint32_t) ((p->sense_key << 12) | ATA_S_READY | ATA_S_ERROR);
			cfis[4] = (cfis[4] & ~7) | ATA_I_CMD | ATA_I_IN;
			FUNC0(p, slot, cfis, tfd);
			return;
		}
		bp = buf + 2;
		*bp++ = 1;
		*bp++ = 1;
		if (start_track <= 1) {
			*bp++ = 0;
			*bp++ = 0x14;
			*bp++ = 1;
			*bp++ = 0;
			if (msf) {
				*bp++ = 0;
				FUNC6(bp, 0);
				bp += 3;
			} else {
				*bp++ = 0;
				*bp++ = 0;
				*bp++ = 0;
				*bp++ = 0;
			}
		}
		*bp++ = 0;
		*bp++ = 0x14;
		*bp++ = 0xaa;
		*bp++ = 0;
		sectors = (uint64_t) (FUNC5(p->bctx) / FUNC4(p->bctx));
		sectors >>= 2;
		if (msf) {
			*bp++ = 0;
			FUNC6(bp, ((int) sectors));
			bp += 3;
		} else {
			FUNC3(bp, ((uint32_t) sectors));
			bp += 4;
		}
		size = (int) (bp - buf);
		FUNC2(buf, ((uint16_t) (size - 2)));
		if (len > size)
			len = size;
		FUNC8(p, slot, cfis, buf, len);
		cfis[4] = (cfis[4] & ~7) | ATA_I_CMD | ATA_I_IN;
		FUNC0(p, slot, cfis, ATA_S_READY | ATA_S_DSC);
		break;
	}
	case 1:
	{
		uint8_t buf[12];

		FUNC7(buf, 0, sizeof(buf));
		buf[1] = 0xa;
		buf[2] = 0x1;
		buf[3] = 0x1;
		if (((size_t) len) > sizeof(buf))
			len = sizeof(buf);
		FUNC8(p, slot, cfis, buf, len);
		cfis[4] = (cfis[4] & ~7) | ATA_I_CMD | ATA_I_IN;
		FUNC0(p, slot, cfis, ATA_S_READY | ATA_S_DSC);
		break;
	}
	case 2:
	{
		int msf, size;
		uint64_t sectors;
		uint8_t start_track, *bp, buf[50];

		msf = (acmd[1] >> 1) & 1;
		start_track = acmd[6];
		bp = buf + 2;
		*bp++ = 1;
		*bp++ = 1;

		*bp++ = 1;
		*bp++ = 0x14;
		*bp++ = 0;
		*bp++ = 0xa0;
		*bp++ = 0;
		*bp++ = 0;
		*bp++ = 0;
		*bp++ = 0;
		*bp++ = 1;
		*bp++ = 0;
		*bp++ = 0;

		*bp++ = 1;
		*bp++ = 0x14;
		*bp++ = 0;
		*bp++ = 0xa1;
		*bp++ = 0;
		*bp++ = 0;
		*bp++ = 0;
		*bp++ = 0;
		*bp++ = 1;
		*bp++ = 0;
		*bp++ = 0;

		*bp++ = 1;
		*bp++ = 0x14;
		*bp++ = 0;
		*bp++ = 0xa2;
		*bp++ = 0;
		*bp++ = 0;
		*bp++ = 0;
		sectors = (uint64_t) (FUNC5(p->bctx) / FUNC4(p->bctx));
		sectors >>= 2;
		if (msf) {
			*bp++ = 0;
			FUNC6(bp, ((int) sectors));
			bp += 3;
		} else {
			FUNC3(bp, ((uint32_t) sectors));
			bp += 4;
		}

		*bp++ = 1;
		*bp++ = 0x14;
		*bp++ = 0;
		*bp++ = 1;
		*bp++ = 0;
		*bp++ = 0;
		*bp++ = 0;
		if (msf) {
			*bp++ = 0;
			FUNC6(bp, 0);
			bp += 3;
		} else {
			*bp++ = 0;
			*bp++ = 0;
			*bp++ = 0;
			*bp++ = 0;
		}

		size = (int) (bp - buf);
		FUNC2(buf, ((uint16_t) (size - 2)));
		if (len > size)
			len = size;
		FUNC8(p, slot, cfis, buf, len);
		cfis[4] = (cfis[4] & ~7) | ATA_I_CMD | ATA_I_IN;
		FUNC0(p, slot, cfis, ATA_S_READY | ATA_S_DSC);
		break;
	}
	default:
	{
		uint32_t tfd;

		p->sense_key = ATA_SENSE_ILLEGAL_REQUEST;
		p->asc = 0x24;
		tfd = (uint32_t) ((p->sense_key << 12) | ATA_S_READY | ATA_S_ERROR);
		cfis[4] = (cfis[4] & ~7) | ATA_I_CMD | ATA_I_IN;
		FUNC0(p, slot, cfis, tfd);
		break;
	}
	}
}