#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  zl_dmu_pool; int /*<<< orphan*/  zl_os; int /*<<< orphan*/  zl_spa; int /*<<< orphan*/  zl_destroy_txg; TYPE_2__* zl_header; } ;
typedef  TYPE_1__ zilog_t ;
struct TYPE_7__ {scalar_t__ zh_claim_txg; scalar_t__ zh_replay_seq; int /*<<< orphan*/  zh_log; } ;
typedef  TYPE_2__ zil_header_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  lwb_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
typedef  int /*<<< orphan*/  blk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZIL_MIN_BLKSZ ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static lwb_t *
FUNC18(zilog_t *zilog)
{
	const zil_header_t *zh = zilog->zl_header;
	lwb_t *lwb = NULL;
	uint64_t txg = 0;
	dmu_tx_t *tx = NULL;
	blkptr_t blk;
	int error = 0;
	boolean_t fastwrite = FALSE;
	boolean_t slog = FALSE;

	/*
	 * Wait for any previous destroy to complete.
	 */
	FUNC13(zilog->zl_dmu_pool, zilog->zl_destroy_txg);

	FUNC0(zh->zh_claim_txg == 0);
	FUNC0(zh->zh_replay_seq == 0);

	blk = zh->zh_log;

	/*
	 * Allocate an initial log block if:
	 *    - there isn't one already
	 *    - the existing block is the wrong endianness
	 */
	if (FUNC1(&blk) || FUNC2(&blk)) {
		tx = FUNC10(zilog->zl_os);
		FUNC5(FUNC8(tx, TXG_WAIT));
		FUNC12(FUNC7(zilog->zl_os), tx);
		txg = FUNC11(tx);

		if (!FUNC1(&blk)) {
			FUNC17(zilog->zl_spa, txg, &blk);
			FUNC3(&blk);
		}

		error = FUNC16(zilog->zl_spa, zilog->zl_os, txg, &blk,
		    ZIL_MIN_BLKSZ, &slog);
		fastwrite = TRUE;

		if (error == 0)
			FUNC15(zilog, &blk);
	}

	/*
	 * Allocate a log write block (lwb) for the first log block.
	 */
	if (error == 0)
		lwb = FUNC14(zilog, &blk, slog, txg, fastwrite);

	/*
	 * If we just allocated the first log block, commit our transaction
	 * and wait for zil_sync() to stuff the block pointer into zh_log.
	 * (zh is part of the MOS, so we cannot modify it in open context.)
	 */
	if (tx != NULL) {
		FUNC9(tx);
		FUNC13(zilog->zl_dmu_pool, txg);
	}

	FUNC0(error != 0 || FUNC6(&blk, &zh->zh_log, sizeof (blk)) == 0);
	FUNC4(error == 0, lwb != NULL);

	return (lwb);
}