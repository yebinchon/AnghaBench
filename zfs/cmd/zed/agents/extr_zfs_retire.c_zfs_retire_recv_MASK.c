#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zpool_handle_t ;
struct TYPE_4__ {int /*<<< orphan*/ * zrd_hdl; } ;
typedef  TYPE_1__ zfs_retire_data_t ;
typedef  int /*<<< orphan*/  vdev_aux_t ;
typedef  size_t uint_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  fmd_hdl_t ;
typedef  int /*<<< orphan*/  fmd_event_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  FM_EREPORT_PAYLOAD_ZFS_POOL_GUID ; 
 int /*<<< orphan*/  FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID ; 
 int /*<<< orphan*/  FM_EREPORT_PAYLOAD_ZFS_VDEV_STATE ; 
 int /*<<< orphan*/  FM_EREPORT_PAYLOAD_ZFS_VDEV_TYPE ; 
 int /*<<< orphan*/  FM_FAULT_RESOURCE ; 
 int /*<<< orphan*/  FM_FMRI_SCHEME ; 
 char* FM_FMRI_SCHEME_ZFS ; 
 int /*<<< orphan*/  FM_FMRI_ZFS_POOL ; 
 int /*<<< orphan*/  FM_FMRI_ZFS_VDEV ; 
 char* FM_LIST_REPAIRED_CLASS ; 
 char* FM_LIST_RESOLVED_CLASS ; 
 int /*<<< orphan*/  FM_SUSPECT_FAULT_LIST ; 
 int /*<<< orphan*/  FM_SUSPECT_RETIRE ; 
 int /*<<< orphan*/  FM_SUSPECT_UUID ; 
 int /*<<< orphan*/  VDEV_AUX_ERR_EXCEEDED ; 
 scalar_t__ VDEV_STATE_HEALTHY ; 
 char* VDEV_TYPE_L2CACHE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*,...) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ***,size_t*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,char*,scalar_t__) ; 

__attribute__((used)) static void
FUNC24(fmd_hdl_t *hdl, fmd_event_t *ep, nvlist_t *nvl,
    const char *class)
{
	uint64_t pool_guid, vdev_guid;
	zpool_handle_t *zhp;
	nvlist_t *resource, *fault;
	nvlist_t **faults;
	uint_t f, nfaults;
	zfs_retire_data_t *zdp = FUNC3(hdl);
	libzfs_handle_t *zhdl = zdp->zrd_hdl;
	boolean_t fault_device, degrade_device;
	boolean_t is_repair;
	char *scheme;
	nvlist_t *vdev = NULL;
	char *uuid;
	int repair_done = 0;
	boolean_t retire;
	boolean_t is_disk;
	vdev_aux_t aux;
	uint64_t state = 0;

	FUNC2(hdl, "zfs_retire_recv: '%s'", class);

	/*
	 * If this is a resource notifying us of device removal then simply
	 * check for an available spare and continue unless the device is a
	 * l2arc vdev, in which case we just offline it.
	 */
	if (FUNC13(class, "resource.fs.zfs.removed") == 0) {
		char *devtype;
		char *devname;

		if (FUNC11(nvl, FM_EREPORT_PAYLOAD_ZFS_POOL_GUID,
		    &pool_guid) != 0 ||
		    FUNC11(nvl, FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID,
		    &vdev_guid) != 0)
			return;

		if ((zhp = FUNC0(zhdl, pool_guid, vdev_guid,
		    &vdev)) == NULL)
			return;

		devname = FUNC22(NULL, zhp, vdev, B_FALSE);

		/* Can't replace l2arc with a spare: offline the device */
		if (FUNC10(nvl, FM_EREPORT_PAYLOAD_ZFS_VDEV_TYPE,
		    &devtype) == 0 && FUNC13(devtype, VDEV_TYPE_L2CACHE) == 0) {
			FUNC2(hdl, "zpool_vdev_offline '%s'", devname);
			FUNC23(zhp, devname, B_TRUE);
		} else if (!FUNC5(hdl, "spare_on_remove") ||
		    FUNC12(hdl, zhp, vdev) == B_FALSE) {
			/* Could not handle with spare: offline the device */
			FUNC2(hdl, "zpool_vdev_offline '%s'", devname);
			FUNC23(zhp, devname, B_TRUE);
		}

		FUNC6(devname);
		FUNC17(zhp);
		return;
	}

	if (FUNC13(class, FM_LIST_RESOLVED_CLASS) == 0)
		return;

	/*
	 * Note: on zfsonlinux statechange events are more than just
	 * healthy ones so we need to confirm the actual state value.
	 */
	if (FUNC13(class, "resource.fs.zfs.statechange") == 0 &&
	    FUNC11(nvl, FM_EREPORT_PAYLOAD_ZFS_VDEV_STATE,
	    &state) == 0 && state == VDEV_STATE_HEALTHY) {
		FUNC15(hdl, nvl);
		return;
	}
	if (FUNC13(class, "sysevent.fs.zfs.vdev_remove") == 0) {
		FUNC15(hdl, nvl);
		return;
	}

	FUNC14(hdl, zdp);

	if (FUNC13(class, FM_LIST_REPAIRED_CLASS) == 0)
		is_repair = B_TRUE;
	else
		is_repair = B_FALSE;

	/*
	 * We subscribe to zfs faults as well as all repair events.
	 */
	if (FUNC9(nvl, FM_SUSPECT_FAULT_LIST,
	    &faults, &nfaults) != 0)
		return;

	for (f = 0; f < nfaults; f++) {
		fault = faults[f];

		fault_device = B_FALSE;
		degrade_device = B_FALSE;
		is_disk = B_FALSE;

		if (FUNC7(fault, FM_SUSPECT_RETIRE,
		    &retire) == 0 && retire == 0)
			continue;

		/*
		 * While we subscribe to fault.fs.zfs.*, we only take action
		 * for faults targeting a specific vdev (open failure or SERD
		 * failure).  We also subscribe to fault.io.* events, so that
		 * faulty disks will be faulted in the ZFS configuration.
		 */
		if (FUNC4(hdl, fault, "fault.fs.zfs.vdev.io")) {
			fault_device = B_TRUE;
		} else if (FUNC4(hdl, fault,
		    "fault.fs.zfs.vdev.checksum")) {
			degrade_device = B_TRUE;
		} else if (FUNC4(hdl, fault,
		    "fault.fs.zfs.device")) {
			fault_device = B_FALSE;
		} else if (FUNC4(hdl, fault, "fault.io.*")) {
			is_disk = B_TRUE;
			fault_device = B_TRUE;
		} else {
			continue;
		}

		if (is_disk) {
			continue;
		} else {
			/*
			 * This is a ZFS fault.  Lookup the resource, and
			 * attempt to find the matching vdev.
			 */
			if (FUNC8(fault, FM_FAULT_RESOURCE,
			    &resource) != 0 ||
			    FUNC10(resource, FM_FMRI_SCHEME,
			    &scheme) != 0)
				continue;

			if (FUNC13(scheme, FM_FMRI_SCHEME_ZFS) != 0)
				continue;

			if (FUNC11(resource, FM_FMRI_ZFS_POOL,
			    &pool_guid) != 0)
				continue;

			if (FUNC11(resource, FM_FMRI_ZFS_VDEV,
			    &vdev_guid) != 0) {
				if (is_repair)
					vdev_guid = 0;
				else
					continue;
			}

			if ((zhp = FUNC0(zhdl, pool_guid, vdev_guid,
			    &vdev)) == NULL)
				continue;

			aux = VDEV_AUX_ERR_EXCEEDED;
		}

		if (vdev_guid == 0) {
			/*
			 * For pool-level repair events, clear the entire pool.
			 */
			FUNC2(hdl, "zpool_clear of pool '%s'",
			    FUNC18(zhp));
			(void) FUNC16(zhp, NULL, NULL);
			FUNC17(zhp);
			continue;
		}

		/*
		 * If this is a repair event, then mark the vdev as repaired and
		 * continue.
		 */
		if (is_repair) {
			repair_done = 1;
			FUNC2(hdl, "zpool_clear of pool '%s' vdev %llu",
			    FUNC18(zhp), vdev_guid);
			(void) FUNC19(zhp, vdev_guid);
			FUNC17(zhp);
			continue;
		}

		/*
		 * Actively fault the device if needed.
		 */
		if (fault_device)
			(void) FUNC21(zhp, vdev_guid, aux);
		if (degrade_device)
			(void) FUNC20(zhp, vdev_guid, aux);

		if (fault_device || degrade_device)
			FUNC2(hdl, "zpool_vdev_%s: vdev %llu on '%s'",
			    fault_device ? "fault" : "degrade", vdev_guid,
			    FUNC18(zhp));

		/*
		 * Attempt to substitute a hot spare.
		 */
		(void) FUNC12(hdl, zhp, vdev);
		FUNC17(zhp);
	}

	if (FUNC13(class, FM_LIST_REPAIRED_CLASS) == 0 && repair_done &&
	    FUNC10(nvl, FM_SUSPECT_UUID, &uuid) == 0)
		FUNC1(hdl, uuid);
}