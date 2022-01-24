#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64_t ;
struct redact_block_list_node {int dummy; } ;
struct merge_data {size_t md_latest_synctask_txg; int /*<<< orphan*/  md_last_time; int /*<<< orphan*/  md_redact_block_pending; int /*<<< orphan*/ * md_blocks; TYPE_1__* md_furthest; scalar_t__* md_synctask_txg; } ;
struct TYPE_6__ {int /*<<< orphan*/  os_spa; } ;
typedef  TYPE_2__ objset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_7__ {int /*<<< orphan*/  dp_mos_dir; } ;
struct TYPE_5__ {size_t rbp_object; size_t rbp_blkid; } ;

/* Variables and functions */
 scalar_t__ B_TRUE ; 
 size_t TXG_MASK ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct merge_data*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  redaction_list_update_sync ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(objset_t *os, struct merge_data *md, uint64_t object,
    uint64_t blkid)
{
	dmu_tx_t *tx = FUNC3(FUNC10(os->os_spa)->dp_mos_dir);
	FUNC5(tx, sizeof (struct redact_block_list_node));
	FUNC0(FUNC1(tx, TXG_WAIT));
	uint64_t txg = FUNC4(tx);
	if (!md->md_synctask_txg[txg & TXG_MASK]) {
		FUNC7(FUNC6(tx),
		    redaction_list_update_sync, md, 5, ZFS_SPACE_CHECK_NONE,
		    tx);
		md->md_synctask_txg[txg & TXG_MASK] = B_TRUE;
		md->md_latest_synctask_txg = txg;
	}
	md->md_furthest[txg & TXG_MASK].rbp_object = object;
	md->md_furthest[txg & TXG_MASK].rbp_blkid = blkid;
	FUNC9(&md->md_blocks[txg & TXG_MASK],
	    &md->md_redact_block_pending);
	FUNC2(tx);
	md->md_last_time = FUNC8();
}