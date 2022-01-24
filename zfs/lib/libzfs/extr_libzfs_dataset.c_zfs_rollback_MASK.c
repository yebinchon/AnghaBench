#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ zfs_prop_t ;
struct TYPE_21__ {scalar_t__ zfs_type; int /*<<< orphan*/  zfs_name; int /*<<< orphan*/  zfs_hdl; } ;
typedef  TYPE_2__ zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_22__ {int cb_force; scalar_t__ cb_create; scalar_t__ cb_error; int /*<<< orphan*/  cb_target; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ rollback_data_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
#define  EEXIST 130 
#define  EINVAL 129 
#define  ESRCH 128 
 int /*<<< orphan*/  EZFS_BADTYPE ; 
 int /*<<< orphan*/  EZFS_EXISTS ; 
 int /*<<< orphan*/  EZFS_NOENT ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 TYPE_1__ ZFS_PROP_CREATETXG ; 
 TYPE_1__ ZFS_PROP_VOLSIZE ; 
 scalar_t__ ZFS_TYPE_FILESYSTEM ; 
 scalar_t__ ZFS_TYPE_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rollback_destroy ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_2__*,TYPE_1__) ; 
 int FUNC11 (TYPE_2__*,TYPE_1__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC13 (TYPE_2__*,TYPE_1__*) ; 

int
FUNC14(zfs_handle_t *zhp, zfs_handle_t *snap, boolean_t force)
{
	rollback_data_t cb = { 0 };
	int err;
	boolean_t restore_resv = 0;
	uint64_t old_volsize = 0, new_volsize;
	zfs_prop_t resv_prop = { 0 };
	uint64_t min_txg = 0;

	FUNC0(zhp->zfs_type == ZFS_TYPE_FILESYSTEM ||
	    zhp->zfs_type == ZFS_TYPE_VOLUME);

	/*
	 * Destroy all recent snapshots and their dependents.
	 */
	cb.cb_force = force;
	cb.cb_target = snap->zfs_name;
	cb.cb_create = FUNC10(snap, ZFS_PROP_CREATETXG);

	if (cb.cb_create > 0)
		min_txg = cb.cb_create;

	(void) FUNC9(zhp, B_FALSE, rollback_destroy, &cb,
	    min_txg, 0);

	(void) FUNC8(zhp, rollback_destroy, &cb);

	if (cb.cb_error)
		return (-1);

	/*
	 * Now that we have verified that the snapshot is the latest,
	 * rollback to the given snapshot.
	 */

	if (zhp->zfs_type == ZFS_TYPE_VOLUME) {
		if (FUNC13(zhp, &resv_prop) < 0)
			return (-1);
		old_volsize = FUNC10(zhp, ZFS_PROP_VOLSIZE);
		restore_resv =
		    (old_volsize == FUNC10(zhp, resv_prop));
	}

	/*
	 * Pass both the filesystem and the wanted snapshot names,
	 * we would get an error back if the snapshot is destroyed or
	 * a new snapshot is created before this request is processed.
	 */
	err = FUNC2(zhp->zfs_name, snap->zfs_name);
	if (err != 0) {
		char errbuf[1024];

		(void) FUNC4(errbuf, sizeof (errbuf),
		    FUNC1(TEXT_DOMAIN, "cannot rollback '%s'"),
		    zhp->zfs_name);
		switch (err) {
		case EEXIST:
			FUNC7(zhp->zfs_hdl, FUNC1(TEXT_DOMAIN,
			    "there is a snapshot or bookmark more recent "
			    "than '%s'"), snap->zfs_name);
			(void) FUNC6(zhp->zfs_hdl, EZFS_EXISTS, errbuf);
			break;
		case ESRCH:
			FUNC7(zhp->zfs_hdl, FUNC1(TEXT_DOMAIN,
			    "'%s' is not found among snapshots of '%s'"),
			    snap->zfs_name, zhp->zfs_name);
			(void) FUNC6(zhp->zfs_hdl, EZFS_NOENT, errbuf);
			break;
		case EINVAL:
			(void) FUNC6(zhp->zfs_hdl, EZFS_BADTYPE, errbuf);
			break;
		default:
			(void) FUNC12(zhp->zfs_hdl, err, errbuf);
		}
		return (err);
	}

	/*
	 * For volumes, if the pre-rollback volsize matched the pre-
	 * rollback reservation and the volsize has changed then set
	 * the reservation property to the post-rollback volsize.
	 * Make a new handle since the rollback closed the dataset.
	 */
	if ((zhp->zfs_type == ZFS_TYPE_VOLUME) &&
	    (zhp = FUNC3(zhp->zfs_hdl, zhp->zfs_name))) {
		if (restore_resv) {
			new_volsize = FUNC10(zhp, ZFS_PROP_VOLSIZE);
			if (old_volsize != new_volsize)
				err = FUNC11(zhp, resv_prop,
				    new_volsize);
		}
		FUNC5(zhp);
	}
	return (err);
}