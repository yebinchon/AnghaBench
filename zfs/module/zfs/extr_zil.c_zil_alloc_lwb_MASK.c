#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  zl_lock; int /*<<< orphan*/  zl_lwb_list; } ;
typedef  TYPE_1__ zilog_t ;
typedef  int /*<<< orphan*/  zil_chain_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {int lwb_nused; int /*<<< orphan*/  lwb_itxs; int /*<<< orphan*/  lwb_waiters; int /*<<< orphan*/  lwb_vdev_tree; int /*<<< orphan*/  lwb_vdev_lock; void* lwb_sz; scalar_t__ lwb_issued_timestamp; int /*<<< orphan*/ * lwb_tx; int /*<<< orphan*/ * lwb_root_zio; int /*<<< orphan*/ * lwb_write_zio; int /*<<< orphan*/  lwb_max_txg; int /*<<< orphan*/  lwb_buf; int /*<<< orphan*/  lwb_state; void* lwb_slog; void* lwb_fastwrite; int /*<<< orphan*/  lwb_blk; TYPE_1__* lwb_zilog; } ;
typedef  TYPE_2__ lwb_t ;
typedef  void* boolean_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  LWB_STATE_CLOSED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZIO_CHECKSUM_ZILOG2 ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zil_lwb_cache ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 

__attribute__((used)) static lwb_t *
FUNC12(zilog_t *zilog, blkptr_t *bp, boolean_t slog, uint64_t txg,
    boolean_t fastwrite)
{
	lwb_t *lwb;

	lwb = FUNC6(zil_lwb_cache, KM_SLEEP);
	lwb->lwb_zilog = zilog;
	lwb->lwb_blk = *bp;
	lwb->lwb_fastwrite = fastwrite;
	lwb->lwb_slog = slog;
	lwb->lwb_state = LWB_STATE_CLOSED;
	lwb->lwb_buf = FUNC11(FUNC2(bp));
	lwb->lwb_max_txg = txg;
	lwb->lwb_write_zio = NULL;
	lwb->lwb_root_zio = NULL;
	lwb->lwb_tx = NULL;
	lwb->lwb_issued_timestamp = 0;
	if (FUNC1(bp) == ZIO_CHECKSUM_ZILOG2) {
		lwb->lwb_nused = sizeof (zil_chain_t);
		lwb->lwb_sz = FUNC2(bp);
	} else {
		lwb->lwb_nused = 0;
		lwb->lwb_sz = FUNC2(bp) - sizeof (zil_chain_t);
	}

	FUNC9(&zilog->zl_lock);
	FUNC7(&zilog->zl_lwb_list, lwb);
	FUNC10(&zilog->zl_lock);

	FUNC0(!FUNC3(&lwb->lwb_vdev_lock));
	FUNC0(FUNC5(&lwb->lwb_vdev_tree));
	FUNC4(FUNC8(&lwb->lwb_waiters));
	FUNC4(FUNC8(&lwb->lwb_itxs));

	return (lwb);
}