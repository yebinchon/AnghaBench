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
typedef  int uint16_t ;
struct blockif_req {int br_resid; scalar_t__ br_offset; } ;
struct ahci_port {int pending; int /*<<< orphan*/  bctx; int /*<<< orphan*/  iobhd; int /*<<< orphan*/  iofhd; } ;
struct ahci_ioreq {int* cfis; int slot; int len; int done; int more; struct blockif_req io_req; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int ATA_DATA_SET_MANAGEMENT ; 
 int ATA_S_DSC ; 
 int ATA_S_READY ; 
 struct ahci_ioreq* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ahci_ioreq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ahci_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct ahci_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahci_port*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ahci_port*,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct blockif_req*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  io_blist ; 
 int /*<<< orphan*/  io_flist ; 
 int /*<<< orphan*/  FUNC10 (struct ahci_port*,int,int*,int*,int) ; 

__attribute__((used)) static void
FUNC11(struct ahci_port *p, int slot, uint8_t *cfis, uint32_t done)
{
	struct ahci_ioreq *aior;
	struct blockif_req *breq;
	uint8_t *entry;
	uint64_t elba;
	uint32_t len, elen;
	int err, first, ncq;
	uint8_t buf[512];

	first = (done == 0);
	if (cfis[2] == ATA_DATA_SET_MANAGEMENT) {
		len = (uint32_t) ((((uint16_t) cfis[13]) << 8) | cfis[12]);
		len *= 512;
		ncq = 0;
	} else { /* ATA_SEND_FPDMA_QUEUED */
		len = (uint32_t) ((((uint16_t) cfis[11]) << 8) | cfis[3]);
		len *= 512;
		ncq = 1;
	}
	FUNC10(p, slot, cfis, buf, sizeof(buf));

next:
	entry = &buf[done];
	elba = ((uint64_t)entry[5] << 40) |
		((uint64_t)entry[4] << 32) |
		((uint64_t)entry[3] << 24) |
		((uint64_t)entry[2] << 16) |
		((uint64_t)entry[1] << 8) |
		entry[0];
	elen = (uint32_t) ((((uint16_t) entry[7]) << 8) | entry[6]);
	done += 8;
	if (elen == 0) {
		if (done >= len) {
			FUNC5(p, slot, cfis, ATA_S_READY | ATA_S_DSC);
			p->pending &= ~(1 << slot);
			FUNC3(p);
			if (!first)
				FUNC4(p);
			return;
		}
		goto next;
	}

	/*
	 * Pull request off free list
	 */
	aior = FUNC0(&p->iofhd);
	FUNC7(aior != NULL);
	FUNC1(&p->iofhd, io_flist);
	aior->cfis = cfis;
	aior->slot = slot;
	aior->len = len;
	aior->done = done;
	aior->more = (len != done);

	breq = &aior->io_req;
	breq->br_offset = (off_t) (elba * ((uint64_t) FUNC9(p->bctx)));
	breq->br_resid = elen * ((unsigned) FUNC9(p->bctx));

	/*
	 * Mark this command in-flight.
	 */
	p->pending |= 1 << slot;

	/*
	 * Stuff request onto busy list
	 */
	FUNC2(&p->iobhd, aior, io_blist);

	if (ncq && first)
		FUNC6(p, slot);

	err = FUNC8(p->bctx, breq);
	FUNC7(err == 0);
}