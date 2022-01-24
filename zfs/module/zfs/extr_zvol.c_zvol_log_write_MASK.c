#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ zv_volblocksize; int /*<<< orphan*/  zv_dn; TYPE_2__* zv_zilog; } ;
typedef  TYPE_1__ zvol_state_t ;
struct TYPE_14__ {scalar_t__ zl_logbias; int /*<<< orphan*/  zl_spa; } ;
typedef  TYPE_2__ zilog_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int ssize_t ;
struct TYPE_15__ {int lr_length; int /*<<< orphan*/  lr_blkptr; scalar_t__ lr_blkoff; scalar_t__ lr_offset; int /*<<< orphan*/  lr_foid; } ;
typedef  TYPE_3__ lr_write_t ;
typedef  scalar_t__ itx_wr_state_t ;
struct TYPE_16__ {int itx_sync; TYPE_1__* itx_private; scalar_t__ itx_wr_state; int /*<<< orphan*/  itx_lr; } ;
typedef  TYPE_4__ itx_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DMU_READ_NO_PREFETCH ; 
 int FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  TX_WRITE ; 
 scalar_t__ WR_COPIED ; 
 scalar_t__ WR_INDIRECT ; 
 scalar_t__ WR_NEED_COPY ; 
 scalar_t__ ZFS_LOGBIAS_THROUGHPUT ; 
 int /*<<< orphan*/  ZVOL_OBJ ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,int,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ zvol_immediate_write_sz ; 

void
FUNC10(zvol_state_t *zv, dmu_tx_t *tx, uint64_t offset,
    uint64_t size, int sync)
{
	uint32_t blocksize = zv->zv_volblocksize;
	zilog_t *zilog = zv->zv_zilog;
	itx_wr_state_t write_state;

	if (FUNC9(zilog, tx))
		return;

	if (zilog->zl_logbias == ZFS_LOGBIAS_THROUGHPUT)
		write_state = WR_INDIRECT;
	else if (!FUNC4(zilog->zl_spa) &&
	    size >= blocksize && blocksize > zvol_immediate_write_sz)
		write_state = WR_INDIRECT;
	else if (sync)
		write_state = WR_COPIED;
	else
		write_state = WR_NEED_COPY;

	while (size) {
		itx_t *itx;
		lr_write_t *lr;
		itx_wr_state_t wr_state = write_state;
		ssize_t len = size;

		if (wr_state == WR_COPIED && size > FUNC8(zilog))
			wr_state = WR_NEED_COPY;
		else if (wr_state == WR_INDIRECT)
			len = FUNC1(blocksize - FUNC2(offset, blocksize), size);

		itx = FUNC6(TX_WRITE, sizeof (*lr) +
		    (wr_state == WR_COPIED ? len : 0));
		lr = (lr_write_t *)&itx->itx_lr;
		if (wr_state == WR_COPIED && FUNC3(zv->zv_dn,
		    offset, len, lr+1, DMU_READ_NO_PREFETCH) != 0) {
			FUNC7(itx);
			itx = FUNC6(TX_WRITE, sizeof (*lr));
			lr = (lr_write_t *)&itx->itx_lr;
			wr_state = WR_NEED_COPY;
		}

		itx->itx_wr_state = wr_state;
		lr->lr_foid = ZVOL_OBJ;
		lr->lr_offset = offset;
		lr->lr_length = len;
		lr->lr_blkoff = 0;
		FUNC0(&lr->lr_blkptr);

		itx->itx_private = zv;
		itx->itx_sync = sync;

		(void) FUNC5(zilog, itx, tx);

		offset += len;
		size -= len;
	}
}