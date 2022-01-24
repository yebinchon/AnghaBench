#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_15__ ;
typedef  struct TYPE_24__   TYPE_12__ ;
typedef  struct TYPE_23__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_29__ {int /*<<< orphan*/  dp_meta_objset; } ;
typedef  TYPE_4__ dsl_pool_t ;
struct TYPE_30__ {scalar_t__ ds_object; TYPE_11__* ds_dir; TYPE_2__* ds_prev; } ;
typedef  TYPE_5__ dsl_dataset_t ;
struct TYPE_31__ {int /*<<< orphan*/  drba_dcp; TYPE_3__* drba_cookie; int /*<<< orphan*/  drba_cred; } ;
typedef  TYPE_6__ dmu_recv_begin_arg_t ;
typedef  int boolean_t ;
struct TYPE_28__ {scalar_t__ drc_force; scalar_t__ drc_fromsnapobj; TYPE_1__* drc_drrb; int /*<<< orphan*/  drc_tosnap; } ;
struct TYPE_27__ {scalar_t__ ds_object; } ;
struct TYPE_26__ {scalar_t__ drr_type; } ;
struct TYPE_25__ {scalar_t__ ds_prev_snap_obj; scalar_t__ ds_guid; int /*<<< orphan*/  ds_snapnames_zapobj; } ;
struct TYPE_24__ {int /*<<< orphan*/  dd_child_dir_zapobj; } ;
struct TYPE_23__ {scalar_t__ dd_crypto_obj; int /*<<< orphan*/  dd_parent; TYPE_4__* dd_pool; } ;

/* Variables and functions */
 scalar_t__ DMU_BACKUP_FEATURE_EMBED_DATA ; 
 scalar_t__ DMU_BACKUP_FEATURE_RAW ; 
 scalar_t__ DMU_OST_ZFS ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENODEV ; 
 int ENOENT ; 
 int /*<<< orphan*/  ETXTBSY ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_REDACTED_DATASETS ; 
 int /*<<< orphan*/  ZFS_ERR_WRONG_PARENT ; 
 int /*<<< orphan*/  ZFS_PROP_SNAPSHOT_LIMIT ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_5__*) ; 
 int FUNC4 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ,TYPE_5__**) ; 
 scalar_t__ FUNC5 (TYPE_5__*,TYPE_5__*) ; 
 TYPE_15__* FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_12__* FUNC8 (TYPE_11__*) ; 
 int FUNC9 (TYPE_11__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  recv_clone_name ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,TYPE_5__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,scalar_t__*) ; 

__attribute__((used)) static int
FUNC13(dmu_recv_begin_arg_t *drba, dsl_dataset_t *ds,
    uint64_t fromguid, uint64_t featureflags)
{
	uint64_t val;
	uint64_t children;
	int error;
	dsl_pool_t *dp = ds->ds_dir->dd_pool;
	boolean_t encrypted = ds->ds_dir->dd_crypto_obj != 0;
	boolean_t raw = (featureflags & DMU_BACKUP_FEATURE_RAW) != 0;
	boolean_t embed = (featureflags & DMU_BACKUP_FEATURE_EMBED_DATA) != 0;

	/* Temporary clone name must not exist. */
	error = FUNC12(dp->dp_meta_objset,
	    FUNC8(ds->ds_dir)->dd_child_dir_zapobj, recv_clone_name,
	    8, 1, &val);
	if (error != ENOENT)
		return (error == 0 ? FUNC0(EBUSY) : error);

	/* Resume state must not be set. */
	if (FUNC3(ds))
		return (FUNC0(EBUSY));

	/* New snapshot name must not exist. */
	error = FUNC12(dp->dp_meta_objset,
	    FUNC6(ds)->ds_snapnames_zapobj,
	    drba->drba_cookie->drc_tosnap, 8, 1, &val);
	if (error != ENOENT)
		return (error == 0 ? FUNC0(EEXIST) : error);

	/* Must not have children if receiving a ZVOL. */
	error = FUNC11(dp->dp_meta_objset,
	    FUNC8(ds->ds_dir)->dd_child_dir_zapobj, &children);
	if (error != 0)
		return (error);
	if (drba->drba_cookie->drc_drrb->drr_type != DMU_OST_ZFS &&
	    children > 0)
		return (FUNC0(ZFS_ERR_WRONG_PARENT));

	/*
	 * Check snapshot limit before receiving. We'll recheck again at the
	 * end, but might as well abort before receiving if we're already over
	 * the limit.
	 *
	 * Note that we do not check the file system limit with
	 * dsl_dir_fscount_check because the temporary %clones don't count
	 * against that limit.
	 */
	error = FUNC9(ds->ds_dir, 1, ZFS_PROP_SNAPSHOT_LIMIT,
	    NULL, drba->drba_cred);
	if (error != 0)
		return (error);

	if (fromguid != 0) {
		dsl_dataset_t *snap;
		uint64_t obj = FUNC6(ds)->ds_prev_snap_obj;

		/* Can't perform a raw receive on top of a non-raw receive */
		if (!encrypted && raw)
			return (FUNC0(EINVAL));

		/* Encryption is incompatible with embedded data */
		if (encrypted && embed)
			return (FUNC0(EINVAL));

		/* Find snapshot in this dir that matches fromguid. */
		while (obj != 0) {
			error = FUNC4(dp, obj, FTAG,
			    &snap);
			if (error != 0)
				return (FUNC0(ENODEV));
			if (snap->ds_dir != ds->ds_dir) {
				FUNC7(snap, FTAG);
				return (FUNC0(ENODEV));
			}
			if (FUNC6(snap)->ds_guid == fromguid)
				break;
			obj = FUNC6(snap)->ds_prev_snap_obj;
			FUNC7(snap, FTAG);
		}
		if (obj == 0)
			return (FUNC0(ENODEV));

		if (drba->drba_cookie->drc_force) {
			drba->drba_cookie->drc_fromsnapobj = obj;
		} else {
			/*
			 * If we are not forcing, there must be no
			 * changes since fromsnap. Raw sends have an
			 * additional constraint that requires that
			 * no "noop" snapshots exist between fromsnap
			 * and tosnap for the IVset checking code to
			 * work properly.
			 */
			if (FUNC5(ds, snap) ||
			    (raw &&
			    FUNC6(ds)->ds_prev_snap_obj !=
			    snap->ds_object)) {
				FUNC7(snap, FTAG);
				return (FUNC0(ETXTBSY));
			}
			drba->drba_cookie->drc_fromsnapobj =
			    ds->ds_prev->ds_object;
		}

		if (FUNC2(snap,
		    SPA_FEATURE_REDACTED_DATASETS) && !FUNC10(drba,
		    snap)) {
			FUNC7(snap, FTAG);
			return (FUNC0(EINVAL));
		}

		FUNC7(snap, FTAG);
	} else {
		/* if full, then must be forced */
		if (!drba->drba_cookie->drc_force)
			return (FUNC0(EEXIST));

		/*
		 * We don't support using zfs recv -F to blow away
		 * encrypted filesystems. This would require the
		 * dsl dir to point to the old encryption key and
		 * the new one at the same time during the receive.
		 */
		if ((!encrypted && raw) || encrypted)
			return (FUNC0(EINVAL));

		/*
		 * Perform the same encryption checks we would if
		 * we were creating a new dataset from scratch.
		 */
		if (!raw) {
			boolean_t will_encrypt;

			error = FUNC1(
			    ds->ds_dir->dd_parent, drba->drba_dcp,
			    &will_encrypt);
			if (error != 0)
				return (error);

			if (will_encrypt && embed)
				return (FUNC0(EINVAL));
		}
	}

	return (0);

}