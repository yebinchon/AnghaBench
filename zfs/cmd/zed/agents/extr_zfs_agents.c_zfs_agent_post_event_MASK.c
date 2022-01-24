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
typedef  int /*<<< orphan*/  uint64_t ;
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_7__ {char const* gs_devid; int gs_vdev_type; scalar_t__ gs_vdev_expandtime; int /*<<< orphan*/  gs_vdev_guid; int /*<<< orphan*/  gs_pool_guid; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ guid_search_t ;
typedef  int device_type_t ;
struct TYPE_8__ {int /*<<< orphan*/  ae_subclass; int /*<<< orphan*/  ae_class; int /*<<< orphan*/ * ae_nvl; } ;
typedef  TYPE_2__ agent_event_t ;

/* Variables and functions */
#define  DEVICE_TYPE_L2ARC 130 
#define  DEVICE_TYPE_PRIMARY 129 
#define  DEVICE_TYPE_SPARE 128 
 int /*<<< orphan*/  DEV_IDENTIFIER ; 
 char* EC_DEV_REMOVE ; 
 char* EC_ZFS ; 
 char* ESC_DISK ; 
 char* ESC_ZFS_VDEV_CHECK ; 
 int /*<<< orphan*/  FM_CLASS ; 
 int /*<<< orphan*/  FM_EREPORT_PAYLOAD_ZFS_POOL_GUID ; 
 int /*<<< orphan*/  FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID ; 
 int /*<<< orphan*/  FM_EREPORT_PAYLOAD_ZFS_VDEV_TYPE ; 
 int /*<<< orphan*/  FM_EREPORT_TIME ; 
 int /*<<< orphan*/  LOG_INFO ; 
 char const* VDEV_TYPE_DISK ; 
 char const* VDEV_TYPE_L2CACHE ; 
 char const* VDEV_TYPE_SPARE ; 
 int /*<<< orphan*/  ZFS_EV_POOL_GUID ; 
 int /*<<< orphan*/  ZFS_EV_VDEV_GUID ; 
 int /*<<< orphan*/  agent_cond ; 
 int /*<<< orphan*/  agent_events ; 
 int /*<<< orphan*/  agent_lock ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  g_zfs_hdl ; 
 int /*<<< orphan*/  FUNC1 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,char*,char const*) ; 
 int /*<<< orphan*/  zfs_agent_iter_pool ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

void
FUNC18(const char *class, const char *subclass, nvlist_t *nvl)
{
	agent_event_t *event;

	if (subclass == NULL)
		subclass = "";

	event = FUNC3(sizeof (agent_event_t));
	if (event == NULL || FUNC7(nvl, &event->ae_nvl, 0) != 0) {
		if (event)
			FUNC0(event);
		return;
	}

	if (FUNC14(class, "sysevent.fs.zfs.vdev_check") == 0) {
		class = EC_ZFS;
		subclass = ESC_ZFS_VDEV_CHECK;
	}

	/*
	 * On ZFS on Linux, we don't get the expected FM_RESOURCE_REMOVED
	 * ereport from vdev_disk layer after a hot unplug. Fortunately we
	 * get a EC_DEV_REMOVE from our disk monitor and it is a suitable
	 * proxy so we remap it here for the benefit of the diagnosis engine.
	 */
	if ((FUNC14(class, EC_DEV_REMOVE) == 0) &&
	    (FUNC14(subclass, ESC_DISK) == 0) &&
	    (FUNC8(nvl, ZFS_EV_VDEV_GUID) ||
	    FUNC8(nvl, DEV_IDENTIFIER))) {
		nvlist_t *payload = event->ae_nvl;
		struct timeval tv;
		int64_t tod[2];
		uint64_t pool_guid = 0, vdev_guid = 0;
		guid_search_t search = { 0 };
		device_type_t devtype = DEVICE_TYPE_PRIMARY;

		class = "resource.fs.zfs.removed";
		subclass = "";

		(void) FUNC5(payload, FM_CLASS, class);
		(void) FUNC10(nvl, ZFS_EV_POOL_GUID, &pool_guid);
		(void) FUNC10(nvl, ZFS_EV_VDEV_GUID, &vdev_guid);

		(void) FUNC1(&tv, NULL);
		tod[0] = tv.tv_sec;
		tod[1] = tv.tv_usec;
		(void) FUNC4(payload, FM_EREPORT_TIME, tod, 2);

		/*
		 * For multipath, spare and l2arc devices ZFS_EV_VDEV_GUID or
		 * ZFS_EV_POOL_GUID may be missing so find them.
		 */
		(void) FUNC9(nvl, DEV_IDENTIFIER,
		    &search.gs_devid);
		(void) FUNC17(g_zfs_hdl, zfs_agent_iter_pool, &search);
		pool_guid = search.gs_pool_guid;
		vdev_guid = search.gs_vdev_guid;
		devtype = search.gs_vdev_type;

		/*
		 * We want to avoid reporting "remove" events coming from
		 * libudev for VDEVs which were expanded recently (10s) and
		 * avoid activating spares in response to partitions being
		 * deleted and created in rapid succession.
		 */
		if (search.gs_vdev_expandtime != 0 &&
		    search.gs_vdev_expandtime + 10 > tv.tv_sec) {
			FUNC16(LOG_INFO, "agent post event: ignoring '%s' "
			    "for recently expanded device '%s'", EC_DEV_REMOVE,
			    search.gs_devid);
			goto out;
		}

		(void) FUNC6(payload,
		    FM_EREPORT_PAYLOAD_ZFS_POOL_GUID, pool_guid);
		(void) FUNC6(payload,
		    FM_EREPORT_PAYLOAD_ZFS_VDEV_GUID, vdev_guid);
		switch (devtype) {
		case DEVICE_TYPE_L2ARC:
			(void) FUNC5(payload,
			    FM_EREPORT_PAYLOAD_ZFS_VDEV_TYPE,
			    VDEV_TYPE_L2CACHE);
			break;
		case DEVICE_TYPE_SPARE:
			(void) FUNC5(payload,
			    FM_EREPORT_PAYLOAD_ZFS_VDEV_TYPE, VDEV_TYPE_SPARE);
			break;
		case DEVICE_TYPE_PRIMARY:
			(void) FUNC5(payload,
			    FM_EREPORT_PAYLOAD_ZFS_VDEV_TYPE, VDEV_TYPE_DISK);
			break;
		}

		FUNC16(LOG_INFO, "agent post event: mapping '%s' to '%s'",
		    EC_DEV_REMOVE, class);
	}

	(void) FUNC15(event->ae_class, class, sizeof (event->ae_class));
	(void) FUNC15(event->ae_subclass, subclass,
	    sizeof (event->ae_subclass));

	(void) FUNC12(&agent_lock);
	FUNC2(&agent_events, event);
	(void) FUNC13(&agent_lock);

out:
	(void) FUNC11(&agent_cond);
}