#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {int zp_copies; int /*<<< orphan*/  zp_byteorder; scalar_t__ zp_encrypt; int /*<<< orphan*/  zp_checksum; } ;
struct TYPE_29__ {int io_txg; int io_size; int io_flags; scalar_t__ io_priority; size_t io_allocator; int io_error; scalar_t__ io_ready; int /*<<< orphan*/  io_pipeline; int /*<<< orphan*/  io_bookmark; int /*<<< orphan*/  io_abd; TYPE_1__ io_prop; TYPE_5__** io_private; TYPE_5__* io_gang_tree; int /*<<< orphan*/  io_alloc_list; int /*<<< orphan*/ * io_bp; struct TYPE_29__* io_gang_leader; int /*<<< orphan*/ * io_spa; } ;
typedef  TYPE_2__ zio_t ;
struct TYPE_30__ {int zp_copies; TYPE_4__* zp_mac; TYPE_4__* zp_iv; TYPE_4__* zp_salt; int /*<<< orphan*/  zp_byteorder; scalar_t__ zp_encrypt; void* zp_nopwrite; void* zp_dedup_verify; void* zp_dedup; scalar_t__ zp_level; int /*<<< orphan*/  zp_type; int /*<<< orphan*/  zp_compress; int /*<<< orphan*/  zp_checksum; } ;
typedef  TYPE_3__ zio_prop_t ;
struct TYPE_31__ {int /*<<< orphan*/ * zg_blkptr; } ;
typedef  TYPE_4__ zio_gbh_phys_t ;
struct TYPE_32__ {int /*<<< orphan*/ * gn_child; TYPE_4__* gn_gbh; } ;
typedef  TYPE_5__ zio_gang_node_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_33__ {int /*<<< orphan*/ * mc_alloc_slots; } ;
typedef  TYPE_6__ metaslab_class_t ;
typedef  int boolean_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
typedef  int /*<<< orphan*/  abd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* B_FALSE ; 
 int /*<<< orphan*/  DMU_OT_NONE ; 
 int METASLAB_ASYNC_ALLOC ; 
 int METASLAB_GANG_HEADER ; 
 int METASLAB_HINTBP_FAVOR ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int,int) ; 
 int SPA_DVAS_PER_BP ; 
 int /*<<< orphan*/  SPA_GANGBLOCKSIZE ; 
 int SPA_GBH_NBLKPTRS ; 
 int SPA_MINBLOCKSIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZIO_COMPRESS_OFF ; 
 int /*<<< orphan*/  ZIO_DATA_IV_LEN ; 
 int /*<<< orphan*/  ZIO_DATA_MAC_LEN ; 
 int /*<<< orphan*/  ZIO_DATA_SALT_LEN ; 
 int ZIO_FLAG_FASTWRITE ; 
 int ZIO_FLAG_IO_ALLOCATING ; 
 int ZIO_FLAG_NODATA ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  ZIO_INTERLOCK_PIPELINE ; 
 scalar_t__ ZIO_PRIORITY_ASYNC_WRITE ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int,size_t,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,int,size_t,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_5__* FUNC14 (TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 TYPE_2__* FUNC16 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC17 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,TYPE_3__*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zio_write_gang_done ; 
 scalar_t__ zio_write_gang_member_ready ; 

__attribute__((used)) static zio_t *
FUNC18(zio_t *pio)
{
	spa_t *spa = pio->io_spa;
	metaslab_class_t *mc = FUNC12(spa);
	blkptr_t *bp = pio->io_bp;
	zio_t *gio = pio->io_gang_leader;
	zio_t *zio;
	zio_gang_node_t *gn, **gnpp;
	zio_gbh_phys_t *gbh;
	abd_t *gbh_abd;
	uint64_t txg = pio->io_txg;
	uint64_t resid = pio->io_size;
	uint64_t lsize;
	int copies = gio->io_prop.zp_copies;
	int gbh_copies;
	zio_prop_t zp;
	int error;
	boolean_t has_data = !(pio->io_flags & ZIO_FLAG_NODATA);

	/*
	 * encrypted blocks need DVA[2] free so encrypted gang headers can't
	 * have a third copy.
	 */
	gbh_copies = FUNC1(copies + 1, FUNC11(spa));
	if (gio->io_prop.zp_encrypt && gbh_copies >= SPA_DVAS_PER_BP)
		gbh_copies = SPA_DVAS_PER_BP - 1;

	int flags = METASLAB_HINTBP_FAVOR | METASLAB_GANG_HEADER;
	if (pio->io_flags & ZIO_FLAG_IO_ALLOCATING) {
		FUNC0(pio->io_priority == ZIO_PRIORITY_ASYNC_WRITE);
		FUNC0(has_data);

		flags |= METASLAB_ASYNC_ALLOC;
		FUNC3(FUNC13(&mc->mc_alloc_slots[pio->io_allocator],
		    pio));

		/*
		 * The logical zio has already placed a reservation for
		 * 'copies' allocation slots but gang blocks may require
		 * additional copies. These additional copies
		 * (i.e. gbh_copies - copies) are guaranteed to succeed
		 * since metaslab_class_throttle_reserve() always allows
		 * additional reservations for gang blocks.
		 */
		FUNC3(FUNC9(mc, gbh_copies - copies,
		    pio->io_allocator, pio, flags));
	}

	error = FUNC8(spa, mc, SPA_GANGBLOCKSIZE,
	    bp, gbh_copies, txg, pio == gio ? NULL : gio->io_bp, flags,
	    &pio->io_alloc_list, pio, pio->io_allocator);
	if (error) {
		if (pio->io_flags & ZIO_FLAG_IO_ALLOCATING) {
			FUNC0(pio->io_priority == ZIO_PRIORITY_ASYNC_WRITE);
			FUNC0(has_data);

			/*
			 * If we failed to allocate the gang block header then
			 * we remove any additional allocation reservations that
			 * we placed here. The original reservation will
			 * be removed when the logical I/O goes to the ready
			 * stage.
			 */
			FUNC10(mc,
			    gbh_copies - copies, pio->io_allocator, pio);
		}

		pio->io_error = error;
		return (pio);
	}

	if (pio == gio) {
		gnpp = &gio->io_gang_tree;
	} else {
		gnpp = pio->io_private;
		FUNC0(pio->io_ready == zio_write_gang_member_ready);
	}

	gn = FUNC14(gnpp);
	gbh = gn->gn_gbh;
	FUNC7(gbh, SPA_GANGBLOCKSIZE);
	gbh_abd = FUNC5(gbh, SPA_GANGBLOCKSIZE);

	/*
	 * Create the gang header.
	 */
	zio = FUNC16(pio, spa, txg, bp, gbh_abd, SPA_GANGBLOCKSIZE,
	    zio_write_gang_done, NULL, pio->io_priority,
	    FUNC4(pio), &pio->io_bookmark);

	/*
	 * Create and nowait the gang children.
	 */
	for (int g = 0; resid != 0; resid -= lsize, g++) {
		lsize = FUNC2(resid / (SPA_GBH_NBLKPTRS - g),
		    SPA_MINBLOCKSIZE);
		FUNC0(lsize >= SPA_MINBLOCKSIZE && lsize <= resid);

		zp.zp_checksum = gio->io_prop.zp_checksum;
		zp.zp_compress = ZIO_COMPRESS_OFF;
		zp.zp_type = DMU_OT_NONE;
		zp.zp_level = 0;
		zp.zp_copies = gio->io_prop.zp_copies;
		zp.zp_dedup = B_FALSE;
		zp.zp_dedup_verify = B_FALSE;
		zp.zp_nopwrite = B_FALSE;
		zp.zp_encrypt = gio->io_prop.zp_encrypt;
		zp.zp_byteorder = gio->io_prop.zp_byteorder;
		FUNC7(zp.zp_salt, ZIO_DATA_SALT_LEN);
		FUNC7(zp.zp_iv, ZIO_DATA_IV_LEN);
		FUNC7(zp.zp_mac, ZIO_DATA_MAC_LEN);

		zio_t *cio = FUNC17(zio, spa, txg, &gbh->zg_blkptr[g],
		    has_data ? FUNC6(pio->io_abd, pio->io_size -
		    resid) : NULL, lsize, lsize, &zp,
		    zio_write_gang_member_ready, NULL, NULL,
		    zio_write_gang_done, &gn->gn_child[g], pio->io_priority,
		    FUNC4(pio), &pio->io_bookmark);

		if (pio->io_flags & ZIO_FLAG_IO_ALLOCATING) {
			FUNC0(pio->io_priority == ZIO_PRIORITY_ASYNC_WRITE);
			FUNC0(has_data);

			/*
			 * Gang children won't throttle but we should
			 * account for their work, so reserve an allocation
			 * slot for them here.
			 */
			FUNC3(FUNC9(mc,
			    zp.zp_copies, cio->io_allocator, cio, flags));
		}
		FUNC15(cio);
	}

	/*
	 * Set pio's pipeline to just wait for zio to finish.
	 */
	pio->io_pipeline = ZIO_INTERLOCK_PIPELINE;

	/*
	 * We didn't allocate this bp, so make sure it doesn't get unmarked.
	 */
	pio->io_flags &= ~ZIO_FLAG_FASTWRITE;

	FUNC15(zio);

	return (pio);
}