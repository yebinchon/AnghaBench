#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_41__   TYPE_5__ ;
typedef  struct TYPE_40__   TYPE_4__ ;
typedef  struct TYPE_39__   TYPE_3__ ;
typedef  struct TYPE_38__   TYPE_2__ ;
typedef  struct TYPE_37__   TYPE_1__ ;
typedef  struct TYPE_36__   TYPE_18__ ;

/* Type definitions */
struct TYPE_38__ {int zp_copies; size_t zp_checksum; int /*<<< orphan*/  zp_dedup; scalar_t__ zp_dedup_verify; } ;
struct TYPE_37__ {scalar_t__ io_txg; int io_flags; int /*<<< orphan*/  io_size; int /*<<< orphan*/  io_abd; int /*<<< orphan*/  io_bookmark; int /*<<< orphan*/  io_priority; int /*<<< orphan*/  io_orig_size; int /*<<< orphan*/  io_orig_abd; scalar_t__ io_bp_override; int /*<<< orphan*/  io_pipeline; int /*<<< orphan*/  io_stage; TYPE_2__ io_prop; TYPE_5__* io_bp; int /*<<< orphan*/ * io_spa; } ;
typedef  TYPE_1__ zio_t ;
typedef  TYPE_2__ zio_prop_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  ddt_t ;
struct TYPE_39__ {scalar_t__ ddp_phys_birth; } ;
typedef  TYPE_3__ ddt_phys_t ;
struct TYPE_40__ {TYPE_1__** dde_lead_zio; TYPE_3__* dde_phys; } ;
typedef  TYPE_4__ ddt_entry_t ;
struct TYPE_41__ {scalar_t__ blk_birth; } ;
typedef  TYPE_5__ blkptr_t ;
struct TYPE_36__ {int ci_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_5__*,scalar_t__) ; 
 size_t FUNC2 (TYPE_5__*) ; 
 int FUNC3 (TYPE_5__*) ; 
 scalar_t__ FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int ZCHECKSUM_FLAG_DEDUP ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int ZIO_FLAG_RAW ; 
 int /*<<< orphan*/  ZIO_STAGE_OPEN ; 
 int /*<<< orphan*/  ZIO_WRITE_PIPELINE ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC11 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 size_t FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_18__* zio_checksum_table ; 
 int /*<<< orphan*/  zio_ddt_child_write_done ; 
 int /*<<< orphan*/  zio_ddt_child_write_ready ; 
 scalar_t__ FUNC17 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC21 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static zio_t *
FUNC22(zio_t *zio)
{
	spa_t *spa = zio->io_spa;
	blkptr_t *bp = zio->io_bp;
	uint64_t txg = zio->io_txg;
	zio_prop_t *zp = &zio->io_prop;
	int p = zp->zp_copies;
	zio_t *cio = NULL;
	ddt_t *ddt = FUNC14(spa, bp);
	ddt_entry_t *dde;
	ddt_phys_t *ddp;

	FUNC0(FUNC3(bp));
	FUNC0(FUNC2(bp) == zp->zp_checksum);
	FUNC0(FUNC4(bp) || zio->io_bp_override);
	FUNC0(!(zio->io_bp_override && (zio->io_flags & ZIO_FLAG_RAW)));

	FUNC9(ddt);
	dde = FUNC11(ddt, bp, B_TRUE);
	ddp = &dde->dde_phys[p];

	if (zp->zp_dedup_verify && FUNC17(zio, ddt, dde)) {
		/*
		 * If we're using a weak checksum, upgrade to a strong checksum
		 * and try again.  If we're already using a strong checksum,
		 * we can't resolve it, so just convert to an ordinary write.
		 * (And automatically e-mail a paper to Nature?)
		 */
		if (!(zio_checksum_table[zp->zp_checksum].ci_flags &
		    ZCHECKSUM_FLAG_DEDUP)) {
			zp->zp_checksum = FUNC15(spa);
			FUNC19(zio);
			zio->io_stage = ZIO_STAGE_OPEN;
			FUNC6(bp);
		} else {
			zp->zp_dedup = B_FALSE;
			FUNC5(bp, B_FALSE);
		}
		FUNC0(!FUNC3(bp));
		zio->io_pipeline = ZIO_WRITE_PIPELINE;
		FUNC10(ddt);
		return (zio);
	}

	if (ddp->ddp_phys_birth != 0 || dde->dde_lead_zio[p] != NULL) {
		if (ddp->ddp_phys_birth != 0)
			FUNC8(ddp, bp, txg);
		if (dde->dde_lead_zio[p] != NULL)
			FUNC16(zio, dde->dde_lead_zio[p]);
		else
			FUNC12(ddp);
	} else if (zio->io_bp_override) {
		FUNC0(bp->blk_birth == txg);
		FUNC0(FUNC1(bp, zio->io_bp_override));
		FUNC13(ddp, bp);
		FUNC12(ddp);
	} else {
		cio = FUNC21(zio, spa, txg, bp, zio->io_orig_abd,
		    zio->io_orig_size, zio->io_orig_size, zp,
		    zio_ddt_child_write_ready, NULL, NULL,
		    zio_ddt_child_write_done, dde, zio->io_priority,
		    FUNC7(zio), &zio->io_bookmark);

		FUNC20(cio, zio->io_abd, zio->io_size, 0, NULL);
		dde->dde_lead_zio[p] = cio;
	}

	FUNC10(ddt);

	if (cio)
		FUNC18(cio);

	return (zio);
}