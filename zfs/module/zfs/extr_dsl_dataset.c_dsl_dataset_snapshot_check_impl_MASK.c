#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_12__ {scalar_t__ ds_trysnap_txg; int /*<<< orphan*/  ds_dir; } ;
typedef  TYPE_1__ dsl_dataset_t ;
struct TYPE_13__ {scalar_t__ tx_txg; } ;
typedef  TYPE_2__ dmu_tx_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_14__ {scalar_t__ ds_prev_snap_txg; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EEXIST ; 
 int ENOENT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_PROP_SNAPSHOT_LIMIT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_8__* FUNC3 (TYPE_1__*) ; 
 int FUNC4 (TYPE_1__*,char const*,scalar_t__*) ; 
 int FUNC5 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC7(dsl_dataset_t *ds, const char *snapname,
    dmu_tx_t *tx, boolean_t recv, uint64_t cnt, cred_t *cr)
{
	int error;
	uint64_t value;

	ds->ds_trysnap_txg = tx->tx_txg;

	if (!FUNC2(tx))
		return (0);

	/*
	 * We don't allow multiple snapshots of the same txg.  If there
	 * is already one, try again.
	 */
	if (FUNC3(ds)->ds_prev_snap_txg >= tx->tx_txg)
		return (FUNC1(EAGAIN));

	/*
	 * Check for conflicting snapshot name.
	 */
	error = FUNC4(ds, snapname, &value);
	if (error == 0)
		return (FUNC1(EEXIST));
	if (error != ENOENT)
		return (error);

	/*
	 * We don't allow taking snapshots of inconsistent datasets, such as
	 * those into which we are currently receiving.  However, if we are
	 * creating this snapshot as part of a receive, this check will be
	 * executed atomically with respect to the completion of the receive
	 * itself but prior to the clearing of DS_FLAG_INCONSISTENT; in this
	 * case we ignore this, knowing it will be fixed up for us shortly in
	 * dmu_recv_end_sync().
	 */
	if (!recv && FUNC0(ds))
		return (FUNC1(EBUSY));

	/*
	 * Skip the check for temporary snapshots or if we have already checked
	 * the counts in dsl_dataset_snapshot_check. This means we really only
	 * check the count here when we're receiving a stream.
	 */
	if (cnt != 0 && cr != NULL) {
		error = FUNC6(ds->ds_dir, cnt,
		    ZFS_PROP_SNAPSHOT_LIMIT, NULL, cr);
		if (error != 0)
			return (error);
	}

	error = FUNC5(ds, tx);
	if (error != 0)
		return (error);

	return (0);
}