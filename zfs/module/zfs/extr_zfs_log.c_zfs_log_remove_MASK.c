#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  z_id; } ;
typedef  TYPE_1__ znode_t ;
typedef  int /*<<< orphan*/  zilog_t ;
typedef  int uint64_t ;
struct TYPE_9__ {int /*<<< orphan*/  lr_doid; } ;
typedef  TYPE_2__ lr_remove_t ;
struct TYPE_10__ {int itx_oid; int /*<<< orphan*/  itx_lr; } ;
typedef  TYPE_3__ itx_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TX_CI ; 
 int TX_REMOVE ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC8(zilog_t *zilog, dmu_tx_t *tx, uint64_t txtype,
    znode_t *dzp, char *name, uint64_t foid, boolean_t unlinked)
{
	itx_t *itx;
	lr_remove_t *lr;
	size_t namesize = FUNC2(name) + 1;

	if (FUNC7(zilog, tx) || FUNC3(dzp))
		return;

	itx = FUNC5(txtype, sizeof (*lr) + namesize);
	lr = (lr_remove_t *)&itx->itx_lr;
	lr->lr_doid = dzp->z_id;
	FUNC1(name, (char *)(lr + 1), namesize);

	itx->itx_oid = foid;

	/*
	 * Object ids can be re-instantiated in the next txg so
	 * remove any async transactions to avoid future leaks.
	 * This can happen if a fsync occurs on the re-instantiated
	 * object for a WR_INDIRECT or WR_NEED_COPY write, which gets
	 * the new file data and flushes a write record for the old object.
	 */
	if (unlinked) {
		FUNC0((txtype & ~TX_CI) == TX_REMOVE);
		FUNC6(zilog, foid);
	}
	FUNC4(zilog, itx, tx);
}