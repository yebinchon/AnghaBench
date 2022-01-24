#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint16_t ;
struct vqueue_info {int dummy; } ;
struct virtio_blk_hdr {int vbh_sector; int vbh_type; } ;
struct pci_vtblk_softc {int /*<<< orphan*/  vbsc_ident; int /*<<< orphan*/  bc; struct pci_vtblk_ioreq* vbsc_ios; } ;
struct TYPE_5__ {int br_iovcnt; scalar_t__ br_resid; scalar_t__ br_offset; int /*<<< orphan*/  br_iov; } ;
struct pci_vtblk_ioreq {TYPE_1__ io_req; struct virtio_blk_hdr* io_status; } ;
struct iovec {int iov_len; struct virtio_blk_hdr* iov_base; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int BLOCKIF_IOV_MAX ; 
 int DEV_BSIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int VBH_FLAG_BARRIER ; 
#define  VBH_OP_FLUSH 132 
#define  VBH_OP_FLUSH_OUT 131 
#define  VBH_OP_IDENT 130 
#define  VBH_OP_READ 129 
#define  VBH_OP_WRITE 128 
 size_t VRING_DESC_F_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct iovec*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct virtio_blk_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct virtio_blk_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct vqueue_info*,size_t*,struct iovec*,int,size_t*) ; 

__attribute__((used)) static void
FUNC11(struct pci_vtblk_softc *sc, struct vqueue_info *vq)
{
	struct virtio_blk_hdr *vbh;
	struct pci_vtblk_ioreq *io;
	int i, n;
	int err;
	ssize_t iolen;
	int writeop, type;
	struct iovec iov[BLOCKIF_IOV_MAX + 2];
	uint16_t idx, flags[BLOCKIF_IOV_MAX + 2];

	n = FUNC10(vq, &idx, iov, BLOCKIF_IOV_MAX + 2, flags);

	/*
	 * The first descriptor will be the read-only fixed header,
	 * and the last is for status (hence +2 above and below).
	 * The remaining iov's are the actual data I/O vectors.
	 *
	 * XXX - note - this fails on crash dump, which does a
	 * VIRTIO_BLK_T_FLUSH with a zero transfer length
	 */
	FUNC2(n >= 2 && n <= BLOCKIF_IOV_MAX + 2);

	io = &sc->vbsc_ios[idx];
	FUNC2((flags[0] & VRING_DESC_F_WRITE) == 0);
	FUNC2(iov[0].iov_len == sizeof(struct virtio_blk_hdr));
	vbh = iov[0].iov_base;
	FUNC6(&io->io_req.br_iov, &iov[1],
		sizeof(struct iovec) * (((size_t) n) - 2));
	io->io_req.br_iovcnt = n - 2;
	io->io_req.br_offset = (off_t) (vbh->vbh_sector * DEV_BSIZE);
	io->io_status = iov[--n].iov_base;
	FUNC2(iov[n].iov_len == 1);
	FUNC2(flags[n] & VRING_DESC_F_WRITE);

	/*
	 * XXX
	 * The guest should not be setting the BARRIER flag because
	 * we don't advertise the capability.
	 */
	type = vbh->vbh_type & ~VBH_FLAG_BARRIER;
	writeop = (type == VBH_OP_WRITE);

	iolen = 0;
	for (i = 1; i < n; i++) {
		/*
		 * - write op implies read-only descriptor,
		 * - read/ident op implies write-only descriptor,
		 * therefore test the inverse of the descriptor bit
		 * to the op.
		 */
		FUNC2(((flags[i] & VRING_DESC_F_WRITE) == 0) == writeop);
		iolen += iov[i].iov_len;
	}
	io->io_req.br_resid = iolen;

	FUNC0(("virtio-block: %s op, %zd bytes, %d segs\n\r", 
		 writeop ? "write" : "read/ident", iolen, i - 1));

	switch (type) {
	case VBH_OP_READ:
		err = FUNC4(sc->bc, &io->io_req);
		break;
	case VBH_OP_WRITE:
		err = FUNC5(sc->bc, &io->io_req);
		break;
	case VBH_OP_FLUSH:
	case VBH_OP_FLUSH_OUT:
		err = FUNC3(sc->bc, &io->io_req);
		break;
	case VBH_OP_IDENT:
		/* Assume a single buffer */
		/* S/n equal to buffer is not zero-terminated. */
		FUNC7(iov[1].iov_base, 0, iov[1].iov_len);
		FUNC9(iov[1].iov_base, sc->vbsc_ident,
		    FUNC1(iov[1].iov_len, sizeof(sc->vbsc_ident)));
		/* xhyve: FIXME */
		FUNC8(&io->io_req, 0);
		return;
	default:
		/* xhyve: FIXME */
		FUNC8(&io->io_req, EOPNOTSUPP);
		return;
	}
	FUNC2(err == 0);
}