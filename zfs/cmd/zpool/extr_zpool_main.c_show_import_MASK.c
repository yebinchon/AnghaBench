#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int zpool_status_t ;
typedef  int zpool_errata_t ;
struct TYPE_5__ {scalar_t__ vs_state; scalar_t__ vs_aux; } ;
typedef  TYPE_1__ vdev_stat_t ;
typedef  int /*<<< orphan*/  uint_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct TYPE_6__ {int cb_namewidth; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ status_cbdata_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 scalar_t__ POOL_STATE_DESTROYED ; 
 scalar_t__ POOL_STATE_EXPORTED ; 
 int /*<<< orphan*/  VDEV_ALLOC_BIAS_DEDUP ; 
 int /*<<< orphan*/  VDEV_ALLOC_BIAS_SPECIAL ; 
 int /*<<< orphan*/  VDEV_ALLOC_CLASS_LOGS ; 
 scalar_t__ VDEV_AUX_CORRUPT_DATA ; 
 int /*<<< orphan*/  VDEV_NAME_TYPE_ID ; 
 scalar_t__ VDEV_STATE_CANT_OPEN ; 
 scalar_t__ VDEV_STATE_CLOSED ; 
 scalar_t__ VDEV_STATE_DEGRADED ; 
 scalar_t__ VDEV_STATE_HEALTHY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_COMMENT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_LOAD_INFO ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MMP_HOSTID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MMP_HOSTNAME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_NAME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_STATE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_STATS ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VDEV_TREE ; 
#define  ZPOOL_ERRATA_NONE 153 
#define  ZPOOL_ERRATA_ZOL_2094_ASYNC_DESTROY 152 
#define  ZPOOL_ERRATA_ZOL_2094_SCRUB 151 
#define  ZPOOL_ERRATA_ZOL_6845_ENCRYPTION 150 
#define  ZPOOL_ERRATA_ZOL_8308_ENCRYPTION 149 
#define  ZPOOL_STATUS_BAD_GUID_SUM 148 
#define  ZPOOL_STATUS_BAD_LOG 147 
#define  ZPOOL_STATUS_CORRUPT_DATA 146 
#define  ZPOOL_STATUS_CORRUPT_LABEL_NR 145 
#define  ZPOOL_STATUS_CORRUPT_LABEL_R 144 
#define  ZPOOL_STATUS_CORRUPT_POOL 143 
#define  ZPOOL_STATUS_ERRATA 142 
#define  ZPOOL_STATUS_FAULTED_DEV_NR 141 
#define  ZPOOL_STATUS_FAULTED_DEV_R 140 
#define  ZPOOL_STATUS_FEAT_DISABLED 139 
#define  ZPOOL_STATUS_HOSTID_ACTIVE 138 
#define  ZPOOL_STATUS_HOSTID_MISMATCH 137 
#define  ZPOOL_STATUS_HOSTID_REQUIRED 136 
#define  ZPOOL_STATUS_MISSING_DEV_NR 135 
#define  ZPOOL_STATUS_MISSING_DEV_R 134 
#define  ZPOOL_STATUS_OFFLINE_DEV 133 
 int ZPOOL_STATUS_OK ; 
#define  ZPOOL_STATUS_RESILVERING 132 
#define  ZPOOL_STATUS_UNSUP_FEAT_READ 131 
#define  ZPOOL_STATUS_UNSUP_FEAT_WRITE 130 
#define  ZPOOL_STATUS_VERSION_NEWER 129 
#define  ZPOOL_STATUS_VERSION_OLDER 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (int /*<<< orphan*/ *,char**,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 char* FUNC18 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC19(nvlist_t *config)
{
	uint64_t pool_state;
	vdev_stat_t *vs;
	char *name;
	uint64_t guid;
	uint64_t hostid = 0;
	char *msgid;
	char *hostname = "unknown";
	nvlist_t *nvroot, *nvinfo;
	zpool_status_t reason;
	zpool_errata_t errata;
	const char *health;
	uint_t vsc;
	char *comment;
	status_cbdata_t cb = { 0 };

	FUNC15(FUNC8(config, ZPOOL_CONFIG_POOL_NAME,
	    &name) == 0);
	FUNC15(FUNC9(config, ZPOOL_CONFIG_POOL_GUID,
	    &guid) == 0);
	FUNC15(FUNC9(config, ZPOOL_CONFIG_POOL_STATE,
	    &pool_state) == 0);
	FUNC15(FUNC7(config, ZPOOL_CONFIG_VDEV_TREE,
	    &nvroot) == 0);

	FUNC15(FUNC10(nvroot, ZPOOL_CONFIG_VDEV_STATS,
	    (uint64_t **)&vs, &vsc) == 0);
	health = FUNC18(vs->vs_state, vs->vs_aux);

	reason = FUNC16(config, &msgid, &errata);

	(void) FUNC13(FUNC4("   pool: %s\n"), name);
	(void) FUNC13(FUNC4("     id: %llu\n"), (u_longlong_t)guid);
	(void) FUNC13(FUNC4("  state: %s"), health);
	if (pool_state == POOL_STATE_DESTROYED)
		(void) FUNC13(FUNC4(" (DESTROYED)"));
	(void) FUNC13("\n");

	switch (reason) {
	case ZPOOL_STATUS_MISSING_DEV_R:
	case ZPOOL_STATUS_MISSING_DEV_NR:
	case ZPOOL_STATUS_BAD_GUID_SUM:
		(void) FUNC13(FUNC4(" status: One or more devices are "
		    "missing from the system.\n"));
		break;

	case ZPOOL_STATUS_CORRUPT_LABEL_R:
	case ZPOOL_STATUS_CORRUPT_LABEL_NR:
		(void) FUNC13(FUNC4(" status: One or more devices contains "
		    "corrupted data.\n"));
		break;

	case ZPOOL_STATUS_CORRUPT_DATA:
		(void) FUNC13(
		    FUNC4(" status: The pool data is corrupted.\n"));
		break;

	case ZPOOL_STATUS_OFFLINE_DEV:
		(void) FUNC13(FUNC4(" status: One or more devices "
		    "are offlined.\n"));
		break;

	case ZPOOL_STATUS_CORRUPT_POOL:
		(void) FUNC13(FUNC4(" status: The pool metadata is "
		    "corrupted.\n"));
		break;

	case ZPOOL_STATUS_VERSION_OLDER:
		(void) FUNC13(FUNC4(" status: The pool is formatted using a "
		    "legacy on-disk version.\n"));
		break;

	case ZPOOL_STATUS_VERSION_NEWER:
		(void) FUNC13(FUNC4(" status: The pool is formatted using an "
		    "incompatible version.\n"));
		break;

	case ZPOOL_STATUS_FEAT_DISABLED:
		(void) FUNC13(FUNC4(" status: Some supported features are "
		    "not enabled on the pool.\n"));
		break;

	case ZPOOL_STATUS_UNSUP_FEAT_READ:
		(void) FUNC13(FUNC4("status: The pool uses the following "
		    "feature(s) not supported on this system:\n"));
		FUNC17(config);
		break;

	case ZPOOL_STATUS_UNSUP_FEAT_WRITE:
		(void) FUNC13(FUNC4("status: The pool can only be accessed "
		    "in read-only mode on this system. It\n\tcannot be "
		    "accessed in read-write mode because it uses the "
		    "following\n\tfeature(s) not supported on this system:\n"));
		FUNC17(config);
		break;

	case ZPOOL_STATUS_HOSTID_ACTIVE:
		(void) FUNC13(FUNC4(" status: The pool is currently "
		    "imported by another system.\n"));
		break;

	case ZPOOL_STATUS_HOSTID_REQUIRED:
		(void) FUNC13(FUNC4(" status: The pool has the "
		    "multihost property on.  It cannot\n\tbe safely imported "
		    "when the system hostid is not set.\n"));
		break;

	case ZPOOL_STATUS_HOSTID_MISMATCH:
		(void) FUNC13(FUNC4(" status: The pool was last accessed by "
		    "another system.\n"));
		break;

	case ZPOOL_STATUS_FAULTED_DEV_R:
	case ZPOOL_STATUS_FAULTED_DEV_NR:
		(void) FUNC13(FUNC4(" status: One or more devices are "
		    "faulted.\n"));
		break;

	case ZPOOL_STATUS_BAD_LOG:
		(void) FUNC13(FUNC4(" status: An intent log record cannot be "
		    "read.\n"));
		break;

	case ZPOOL_STATUS_RESILVERING:
		(void) FUNC13(FUNC4(" status: One or more devices were being "
		    "resilvered.\n"));
		break;

	case ZPOOL_STATUS_ERRATA:
		(void) FUNC13(FUNC4(" status: Errata #%d detected.\n"),
		    errata);
		break;

	default:
		/*
		 * No other status can be seen when importing pools.
		 */
		FUNC1(reason == ZPOOL_STATUS_OK);
	}

	/*
	 * Print out an action according to the overall state of the pool.
	 */
	if (vs->vs_state == VDEV_STATE_HEALTHY) {
		if (reason == ZPOOL_STATUS_VERSION_OLDER ||
		    reason == ZPOOL_STATUS_FEAT_DISABLED) {
			(void) FUNC13(FUNC4(" action: The pool can be "
			    "imported using its name or numeric identifier, "
			    "though\n\tsome features will not be available "
			    "without an explicit 'zpool upgrade'.\n"));
		} else if (reason == ZPOOL_STATUS_HOSTID_MISMATCH) {
			(void) FUNC13(FUNC4(" action: The pool can be "
			    "imported using its name or numeric "
			    "identifier and\n\tthe '-f' flag.\n"));
		} else if (reason == ZPOOL_STATUS_ERRATA) {
			switch (errata) {
			case ZPOOL_ERRATA_NONE:
				break;

			case ZPOOL_ERRATA_ZOL_2094_SCRUB:
				(void) FUNC13(FUNC4(" action: The pool can "
				    "be imported using its name or numeric "
				    "identifier,\n\thowever there is a compat"
				    "ibility issue which should be corrected"
				    "\n\tby running 'zpool scrub'\n"));
				break;

			case ZPOOL_ERRATA_ZOL_2094_ASYNC_DESTROY:
				(void) FUNC13(FUNC4(" action: The pool can"
				    "not be imported with this version of ZFS "
				    "due to\n\tan active asynchronous destroy. "
				    "Revert to an earlier version\n\tand "
				    "allow the destroy to complete before "
				    "updating.\n"));
				break;

			case ZPOOL_ERRATA_ZOL_6845_ENCRYPTION:
				(void) FUNC13(FUNC4(" action: Existing "
				    "encrypted datasets contain an on-disk "
				    "incompatibility, which\n\tneeds to be "
				    "corrected. Backup these datasets to new "
				    "encrypted datasets\n\tand destroy the "
				    "old ones.\n"));
				break;

			case ZPOOL_ERRATA_ZOL_8308_ENCRYPTION:
				(void) FUNC13(FUNC4(" action: Existing "
				    "encrypted snapshots and bookmarks contain "
				    "an on-disk\n\tincompatibility. This may "
				    "cause on-disk corruption if they are used"
				    "\n\twith 'zfs recv'. To correct the "
				    "issue, enable the bookmark_v2 feature.\n\t"
				    "No additional action is needed if there "
				    "are no encrypted snapshots or\n\t"
				    "bookmarks. If preserving the encrypted "
				    "snapshots and bookmarks is\n\trequired, "
				    "use a non-raw send to backup and restore "
				    "them. Alternately,\n\tthey may be removed"
				    " to resolve the incompatibility.\n"));
				break;
			default:
				/*
				 * All errata must contain an action message.
				 */
				FUNC1(0);
			}
		} else {
			(void) FUNC13(FUNC4(" action: The pool can be "
			    "imported using its name or numeric "
			    "identifier.\n"));
		}
	} else if (vs->vs_state == VDEV_STATE_DEGRADED) {
		(void) FUNC13(FUNC4(" action: The pool can be imported "
		    "despite missing or damaged devices.  The\n\tfault "
		    "tolerance of the pool may be compromised if imported.\n"));
	} else {
		switch (reason) {
		case ZPOOL_STATUS_VERSION_NEWER:
			(void) FUNC13(FUNC4(" action: The pool cannot be "
			    "imported.  Access the pool on a system running "
			    "newer\n\tsoftware, or recreate the pool from "
			    "backup.\n"));
			break;
		case ZPOOL_STATUS_UNSUP_FEAT_READ:
			(void) FUNC13(FUNC4("action: The pool cannot be "
			    "imported. Access the pool on a system that "
			    "supports\n\tthe required feature(s), or recreate "
			    "the pool from backup.\n"));
			break;
		case ZPOOL_STATUS_UNSUP_FEAT_WRITE:
			(void) FUNC13(FUNC4("action: The pool cannot be "
			    "imported in read-write mode. Import the pool "
			    "with\n"
			    "\t\"-o readonly=on\", access the pool on a system "
			    "that supports the\n\trequired feature(s), or "
			    "recreate the pool from backup.\n"));
			break;
		case ZPOOL_STATUS_MISSING_DEV_R:
		case ZPOOL_STATUS_MISSING_DEV_NR:
		case ZPOOL_STATUS_BAD_GUID_SUM:
			(void) FUNC13(FUNC4(" action: The pool cannot be "
			    "imported. Attach the missing\n\tdevices and try "
			    "again.\n"));
			break;
		case ZPOOL_STATUS_HOSTID_ACTIVE:
			FUNC0(FUNC7(config,
			    ZPOOL_CONFIG_LOAD_INFO, &nvinfo));

			if (FUNC6(nvinfo, ZPOOL_CONFIG_MMP_HOSTNAME))
				hostname = FUNC2(nvinfo,
				    ZPOOL_CONFIG_MMP_HOSTNAME);

			if (FUNC6(nvinfo, ZPOOL_CONFIG_MMP_HOSTID))
				hostid = FUNC3(nvinfo,
				    ZPOOL_CONFIG_MMP_HOSTID);

			(void) FUNC13(FUNC4(" action: The pool must be "
			    "exported from %s (hostid=%lx)\n\tbefore it "
			    "can be safely imported.\n"), hostname,
			    (unsigned long) hostid);
			break;
		case ZPOOL_STATUS_HOSTID_REQUIRED:
			(void) FUNC13(FUNC4(" action: Set a unique system "
			    "hostid with the zgenhostid(8) command.\n"));
			break;
		default:
			(void) FUNC13(FUNC4(" action: The pool cannot be "
			    "imported due to damaged devices or data.\n"));
		}
	}

	/* Print the comment attached to the pool. */
	if (FUNC8(config, ZPOOL_CONFIG_COMMENT, &comment) == 0)
		(void) FUNC13(FUNC4("comment: %s\n"), comment);

	/*
	 * If the state is "closed" or "can't open", and the aux state
	 * is "corrupt data":
	 */
	if (((vs->vs_state == VDEV_STATE_CLOSED) ||
	    (vs->vs_state == VDEV_STATE_CANT_OPEN)) &&
	    (vs->vs_aux == VDEV_AUX_CORRUPT_DATA)) {
		if (pool_state == POOL_STATE_DESTROYED)
			(void) FUNC13(FUNC4("\tThe pool was destroyed, "
			    "but can be imported using the '-Df' flags.\n"));
		else if (pool_state != POOL_STATE_EXPORTED)
			(void) FUNC13(FUNC4("\tThe pool may be active on "
			    "another system, but can be imported using\n\t"
			    "the '-f' flag.\n"));
	}

	if (msgid != NULL)
		(void) FUNC13(FUNC4("   see: http://zfsonlinux.org/msg/%s\n"),
		    msgid);

	(void) FUNC13(FUNC4(" config:\n\n"));

	cb.cb_namewidth = FUNC5(NULL, nvroot, 0, FUNC14(name),
	    VDEV_NAME_TYPE_ID);
	if (cb.cb_namewidth < 10)
		cb.cb_namewidth = 10;

	FUNC12(&cb, name, nvroot, 0);

	FUNC11(NULL, &cb, nvroot, VDEV_ALLOC_BIAS_DEDUP);
	FUNC11(NULL, &cb, nvroot, VDEV_ALLOC_BIAS_SPECIAL);
	FUNC11(NULL, &cb, nvroot, VDEV_ALLOC_CLASS_LOGS);

	if (reason == ZPOOL_STATUS_BAD_GUID_SUM) {
		(void) FUNC13(FUNC4("\n\tAdditional devices are known to "
		    "be part of this pool, though their\n\texact "
		    "configuration cannot be determined.\n"));
	}
}