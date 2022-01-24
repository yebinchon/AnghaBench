#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uu_avl_walk_t ;
typedef  int /*<<< orphan*/  shareopts ;
struct TYPE_17__ {TYPE_3__* cn_handle; scalar_t__ cn_shared; scalar_t__ cn_mounted; scalar_t__ cn_needpost; scalar_t__ cn_zoned; } ;
typedef  TYPE_1__ prop_changenode_t ;
struct TYPE_18__ {scalar_t__ cl_prop; scalar_t__ cl_waslegacy; int /*<<< orphan*/  cl_tree; } ;
typedef  TYPE_2__ prop_changelist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int boolean_t ;
struct TYPE_19__ {int /*<<< orphan*/ * zfs_hdl; } ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ GLOBAL_ZONEID ; 
 int TRUE ; 
 int UU_WALK_REVERSE ; 
 int UU_WALK_ROBUST ; 
 scalar_t__ ZFS_CANMOUNT_ON ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ ZFS_KEYSTATUS_UNAVAILABLE ; 
 int ZFS_MAXPROPLEN ; 
 int /*<<< orphan*/  ZFS_PROP_CANMOUNT ; 
 int /*<<< orphan*/  ZFS_PROP_KEYSTATUS ; 
 scalar_t__ ZFS_PROP_MOUNTPOINT ; 
 int /*<<< orphan*/  ZFS_PROP_SHARENFS ; 
 int /*<<< orphan*/  ZFS_PROP_SHARESMB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,int) ; 
 int FUNC9 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 scalar_t__ FUNC14 (TYPE_3__*) ; 
 scalar_t__ FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (TYPE_3__*,int /*<<< orphan*/ *) ; 

int
FUNC19(prop_changelist_t *clp)
{
	prop_changenode_t *cn;
	uu_avl_walk_t *walk;
	char shareopts[ZFS_MAXPROPLEN];
	int errors = 0;
	libzfs_handle_t *hdl;

	/*
	 * If we're changing the mountpoint, attempt to destroy the underlying
	 * mountpoint.  All other datasets will have inherited from this dataset
	 * (in which case their mountpoints exist in the filesystem in the new
	 * location), or have explicit mountpoints set (in which case they won't
	 * be in the changelist).
	 */
	if ((cn = FUNC5(clp->cl_tree)) == NULL)
		return (0);

	if (clp->cl_prop == ZFS_PROP_MOUNTPOINT)
		FUNC3(cn->cn_handle);

	/*
	 * It is possible that the changelist_prefix() used libshare
	 * to unshare some entries. Since libshare caches data, an
	 * attempt to reshare during postfix can fail unless libshare
	 * is uninitialized here so that it will reinitialize later.
	 */
	if (cn->cn_handle != NULL) {
		hdl = cn->cn_handle->zfs_hdl;
		FUNC1(hdl != NULL);
		FUNC16(hdl);
	}

	/*
	 * We walk the datasets in reverse, because we want to mount any parent
	 * datasets before mounting the children.  We walk all datasets even if
	 * there are errors.
	 */
	if ((walk = FUNC8(clp->cl_tree,
	    UU_WALK_REVERSE | UU_WALK_ROBUST)) == NULL)
		return (-1);

	while ((cn = FUNC7(walk)) != NULL) {

		boolean_t sharenfs;
		boolean_t sharesmb;
		boolean_t mounted;
		boolean_t needs_key;

		/*
		 * If we are in the global zone, but this dataset is exported
		 * to a local zone, do nothing.
		 */
		if (FUNC2() == GLOBAL_ZONEID && cn->cn_zoned)
			continue;

		/* Only do post-processing if it's required */
		if (!cn->cn_needpost)
			continue;
		cn->cn_needpost = B_FALSE;

		FUNC13(cn->cn_handle);

		if (FUNC0(cn->cn_handle))
			continue;

		/*
		 * Remount if previously mounted or mountpoint was legacy,
		 * or sharenfs or sharesmb  property is set.
		 */
		sharenfs = ((FUNC11(cn->cn_handle, ZFS_PROP_SHARENFS,
		    shareopts, sizeof (shareopts), NULL, NULL, 0,
		    B_FALSE) == 0) && (FUNC4(shareopts, "off") != 0));

		sharesmb = ((FUNC11(cn->cn_handle, ZFS_PROP_SHARESMB,
		    shareopts, sizeof (shareopts), NULL, NULL, 0,
		    B_FALSE) == 0) && (FUNC4(shareopts, "off") != 0));

		needs_key = (FUNC12(cn->cn_handle,
		    ZFS_PROP_KEYSTATUS) == ZFS_KEYSTATUS_UNAVAILABLE);

		mounted = FUNC9(cn->cn_handle, NULL);

		if (!mounted && !needs_key && (cn->cn_mounted ||
		    ((sharenfs || sharesmb || clp->cl_waslegacy) &&
		    (FUNC12(cn->cn_handle,
		    ZFS_PROP_CANMOUNT) == ZFS_CANMOUNT_ON)))) {

			if (FUNC10(cn->cn_handle, NULL, 0) != 0)
				errors++;
			else
				mounted = TRUE;
		}

		/*
		 * If the file system is mounted we always re-share even
		 * if the filesystem is currently shared, so that we can
		 * adopt any new options.
		 */
		if (sharenfs && mounted)
			errors += FUNC14(cn->cn_handle);
		else if (cn->cn_shared || clp->cl_waslegacy)
			errors += FUNC17(cn->cn_handle, NULL);
		if (sharesmb && mounted)
			errors += FUNC15(cn->cn_handle);
		else if (cn->cn_shared || clp->cl_waslegacy)
			errors += FUNC18(cn->cn_handle, NULL);
	}

	FUNC6(walk);

	return (errors ? -1 : 0);
}