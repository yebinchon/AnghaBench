#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
typedef  int u_char ;
struct TYPE_13__ {int /*<<< orphan*/ * vs_mtx; } ;
struct TYPE_11__ {scalar_t__ opt_io_size; scalar_t__ min_io_size; void* alignment_offset; void* physical_block_exp; } ;
struct TYPE_10__ {scalar_t__ sectors; scalar_t__ heads; scalar_t__ cylinders; } ;
struct TYPE_12__ {scalar_t__ vbc_writeback; TYPE_3__ vbc_topology; scalar_t__ vbc_blk_size; TYPE_2__ vbc_geometry; int /*<<< orphan*/  vbc_seg_max; scalar_t__ vbc_size_max; scalar_t__ vbc_capacity; } ;
struct TYPE_14__ {int vq_qsize; } ;
struct pci_vtblk_softc {TYPE_5__ vbsc_vs; struct blockif_ctxt* bc; TYPE_4__ vbsc_cfg; int /*<<< orphan*/  vbsc_ident; TYPE_6__ vbsc_vq; int /*<<< orphan*/  vsc_mtx; struct pci_vtblk_ioreq* vbsc_ios; } ;
struct TYPE_9__ {struct pci_vtblk_ioreq* br_param; int /*<<< orphan*/  br_callback; } ;
struct pci_vtblk_ioreq {scalar_t__ io_idx; struct pci_vtblk_softc* io_sc; TYPE_1__ io_req; } ;
struct pci_devinst {int pi_slot; int pi_func; } ;
struct blockif_ctxt {int dummy; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  bident ;
typedef  int /*<<< orphan*/  CC_LONG ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCKIF_IOV_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int*) ; 
 int CC_SHA256_DIGEST_LENGTH ; 
 int DEV_BSIZE ; 
 int /*<<< orphan*/  PCIC_STORAGE ; 
 int /*<<< orphan*/  PCIR_CLASS ; 
 int /*<<< orphan*/  PCIR_DEVICE ; 
 int /*<<< orphan*/  PCIR_SUBDEV_0 ; 
 int /*<<< orphan*/  PCIR_SUBVEND_0 ; 
 int /*<<< orphan*/  PCIR_VENDOR ; 
 int /*<<< orphan*/  VIRTIO_DEV_BLOCK ; 
 int /*<<< orphan*/  VIRTIO_TYPE_BLOCK ; 
 int /*<<< orphan*/  VIRTIO_VENDOR ; 
 int /*<<< orphan*/  VTBLK_BLK_ID_BYTES ; 
 int VTBLK_RINGSZ ; 
 int /*<<< orphan*/  FUNC1 (struct blockif_ctxt*) ; 
 struct blockif_ctxt* FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct blockif_ctxt*,int*,int*) ; 
 int FUNC4 (struct blockif_ctxt*) ; 
 int FUNC5 (struct blockif_ctxt*) ; 
 struct pci_vtblk_softc* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct pci_vtblk_softc*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_vtblk_done ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*,int,int,...) ; 
 scalar_t__ FUNC16 (char*) ; 
 scalar_t__ FUNC17 (TYPE_5__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*,int /*<<< orphan*/ *,struct pci_vtblk_softc*,struct pci_devinst*,TYPE_6__*) ; 
 int /*<<< orphan*/  vtblk_vi_consts ; 

__attribute__((used)) static int
FUNC20(struct pci_devinst *pi, char *opts)
{
	char bident[sizeof("XX:X:X")];
	struct blockif_ctxt *bctxt;
	u_char digest[CC_SHA256_DIGEST_LENGTH];
	struct pci_vtblk_softc *sc;
	off_t size;
	int i, sectsz, sts, sto;

	if (opts == NULL) {
		FUNC13("virtio-block: backing device required\n");
		return (1);
	}

	/*
	 * The supplied backing file has to exist
	 */
	FUNC15(bident, sizeof(bident), "%d:%d", pi->pi_slot, pi->pi_func);
	bctxt = FUNC2(opts, bident);
	if (bctxt == NULL) {       	
		FUNC12("Could not open backing file");
		return (1);
	}

	size = FUNC5(bctxt);
	sectsz = FUNC4(bctxt);
	FUNC3(bctxt, &sts, &sto);

	sc = FUNC6(1, sizeof(struct pci_vtblk_softc));
	sc->bc = bctxt;
	for (i = 0; i < VTBLK_RINGSZ; i++) {
		struct pci_vtblk_ioreq *io = &sc->vbsc_ios[i];
		io->io_req.br_callback = pci_vtblk_done;
		io->io_req.br_param = io;
		io->io_sc = sc;
		io->io_idx = (uint16_t) i;
	}

	FUNC14(&sc->vsc_mtx, NULL);

	/* init virtio softc and virtqueues */
	FUNC19(&sc->vbsc_vs, &vtblk_vi_consts, sc, pi, &sc->vbsc_vq);
	sc->vbsc_vs.vs_mtx = &sc->vsc_mtx;

	sc->vbsc_vq.vq_qsize = VTBLK_RINGSZ;
	/* sc->vbsc_vq.vq_notify = we have no per-queue notify */

	/*
	 * Create an identifier for the backing file. Use parts of the
	 * md5 sum of the filename
	 */
    FUNC0(opts, (CC_LONG)FUNC16(opts), digest);
	FUNC15(sc->vbsc_ident, VTBLK_BLK_ID_BYTES, "BHYVE-%02X%02X-%02X%02X-%02X%02X",
	    digest[0], digest[1], digest[2], digest[3], digest[4], digest[5]);

	/* setup virtio block config space */
	sc->vbsc_cfg.vbc_capacity =
		(uint64_t) (size / DEV_BSIZE); /* 512-byte units */
	sc->vbsc_cfg.vbc_size_max = 0;	/* not negotiated */
	sc->vbsc_cfg.vbc_seg_max = BLOCKIF_IOV_MAX;
	sc->vbsc_cfg.vbc_geometry.cylinders = 0;	/* no geometry */
	sc->vbsc_cfg.vbc_geometry.heads = 0;
	sc->vbsc_cfg.vbc_geometry.sectors = 0;
	sc->vbsc_cfg.vbc_blk_size = (uint32_t) sectsz;
	sc->vbsc_cfg.vbc_topology.physical_block_exp =
	    (uint8_t) ((sts > sectsz) ? (FUNC8(sts / sectsz) - 1) : 0);
	sc->vbsc_cfg.vbc_topology.alignment_offset =
	    (uint8_t) ((sto != 0) ? ((sts - sto) / sectsz) : 0);
	sc->vbsc_cfg.vbc_topology.min_io_size = 0;
	sc->vbsc_cfg.vbc_topology.opt_io_size = 0;
	sc->vbsc_cfg.vbc_writeback = 0;

	/*
	 * Should we move some of this into virtio.c?  Could
	 * have the device, class, and subdev_0 as fields in
	 * the virtio constants structure.
	 */
	FUNC10(pi, PCIR_DEVICE, VIRTIO_DEV_BLOCK);
	FUNC10(pi, PCIR_VENDOR, VIRTIO_VENDOR);
	FUNC11(pi, PCIR_CLASS, PCIC_STORAGE);
	FUNC10(pi, PCIR_SUBDEV_0, VIRTIO_TYPE_BLOCK);
	FUNC10(pi, PCIR_SUBVEND_0, VIRTIO_VENDOR);

	if (FUNC17(&sc->vbsc_vs, 1, FUNC7())) {
		FUNC1(sc->bc);
		FUNC9(sc);
		return (1);
	}
	FUNC18(&sc->vbsc_vs, 0);
	return (0);
}