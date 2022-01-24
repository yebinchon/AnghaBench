#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int zlp_rewind; } ;
typedef  TYPE_1__ zpool_load_policy_t ;
typedef  int /*<<< orphan*/  zpool_handle_t ;
struct TYPE_14__ {char* member_0; int zc_nvlist_conf_size; int zc_cookie; void* zc_guid; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  void* uint64_t ;
struct TYPE_15__ {int import; int /*<<< orphan*/  create; } ;
typedef  TYPE_3__ prop_flags_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  void* mmp_state_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  desc ;
typedef  int /*<<< orphan*/  aux ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int B_TRUE ; 
#define  EBUSY 135 
#define  EEXIST 134 
#define  EINVAL 133 
#define  ENAMETOOLONG 132 
 int ENOMEM ; 
#define  ENOTSUP 131 
#define  ENXIO 130 
#define  EREMOTEIO 129 
#define  EROFS 128 
 int /*<<< orphan*/  EZFS_ACTIVE_POOL ; 
 int /*<<< orphan*/  EZFS_BADDEV ; 
 int /*<<< orphan*/  EZFS_BADVERSION ; 
 int /*<<< orphan*/  EZFS_INVALCONFIG ; 
 int /*<<< orphan*/  EZFS_INVALIDNAME ; 
 int /*<<< orphan*/  EZFS_NAMETOOLONG ; 
 void* MMP_STATE_ACTIVE ; 
 void* MMP_STATE_NO_HOSTID ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_POOL_IMPORT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_CAN_RDONLY ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_LOAD_INFO ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MISSING_DEVICES ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MMP_HOSTID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MMP_HOSTNAME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_MMP_STATE ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_GUID ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_POOL_NAME ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_UNSUP_FEAT ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_VERSION ; 
 int ZPOOL_DO_REWIND ; 
 int ZPOOL_TRY_REWIND ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * FUNC31 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,void*,TYPE_3__,char*) ; 

int
FUNC32(libzfs_handle_t *hdl, nvlist_t *config, const char *newname,
    nvlist_t *props, int flags)
{
	zfs_cmd_t zc = {"\0"};
	zpool_load_policy_t policy;
	nvlist_t *nv = NULL;
	nvlist_t *nvinfo = NULL;
	nvlist_t *missing = NULL;
	char *thename;
	char *origname;
	int ret;
	int error = 0;
	char errbuf[1024];

	FUNC12(FUNC6(config, ZPOOL_CONFIG_POOL_NAME,
	    &origname) == 0);

	(void) FUNC10(errbuf, sizeof (errbuf), FUNC0(TEXT_DOMAIN,
	    "cannot import pool '%s'"), origname);

	if (newname != NULL) {
		if (!FUNC26(hdl, B_FALSE, newname))
			return (FUNC21(hdl, EZFS_INVALIDNAME,
			    FUNC0(TEXT_DOMAIN, "cannot import '%s'"),
			    newname));
		thename = (char *)newname;
	} else {
		thename = origname;
	}

	if (props != NULL) {
		uint64_t version;
		prop_flags_t flags = { .create = B_FALSE, .import = B_TRUE };

		FUNC12(FUNC7(config, ZPOOL_CONFIG_VERSION,
		    &version) == 0);

		if ((props = FUNC31(hdl, origname,
		    props, version, flags, errbuf)) == NULL)
			return (-1);
		if (FUNC18(hdl, &zc, props) != 0) {
			FUNC4(props);
			return (-1);
		}
		FUNC4(props);
	}

	(void) FUNC11(zc.zc_name, thename, sizeof (zc.zc_name));

	FUNC12(FUNC7(config, ZPOOL_CONFIG_POOL_GUID,
	    &zc.zc_guid) == 0);

	if (FUNC17(hdl, &zc, config) != 0) {
		FUNC15(&zc);
		return (-1);
	}
	if (FUNC13(hdl, &zc, zc.zc_nvlist_conf_size * 2) != 0) {
		FUNC15(&zc);
		return (-1);
	}

	zc.zc_cookie = flags;
	while ((ret = FUNC22(hdl, ZFS_IOC_POOL_IMPORT, &zc)) != 0 &&
	    errno == ENOMEM) {
		if (FUNC14(hdl, &zc) != 0) {
			FUNC15(&zc);
			return (-1);
		}
	}
	if (ret != 0)
		error = errno;

	(void) FUNC16(hdl, &zc, &nv);

	FUNC15(&zc);

	FUNC25(config, &policy);

	if (error) {
		char desc[1024];
		char aux[256];

		/*
		 * Dry-run failed, but we print out what success
		 * looks like if we found a best txg
		 */
		if (policy.zlp_rewind & ZPOOL_TRY_REWIND) {
			FUNC29(hdl, newname ? origname : thename,
			    B_TRUE, nv);
			FUNC4(nv);
			return (-1);
		}

		if (newname == NULL)
			(void) FUNC10(desc, sizeof (desc),
			    FUNC0(TEXT_DOMAIN, "cannot import '%s'"),
			    thename);
		else
			(void) FUNC10(desc, sizeof (desc),
			    FUNC0(TEXT_DOMAIN, "cannot import '%s' as '%s'"),
			    origname, thename);

		switch (error) {
		case ENOTSUP:
			if (nv != NULL && FUNC5(nv,
			    ZPOOL_CONFIG_LOAD_INFO, &nvinfo) == 0 &&
			    FUNC3(nvinfo, ZPOOL_CONFIG_UNSUP_FEAT)) {
				(void) FUNC9(FUNC0(TEXT_DOMAIN, "This "
				    "pool uses the following feature(s) not "
				    "supported by this system:\n"));
				FUNC28(nv);
				if (FUNC3(nvinfo,
				    ZPOOL_CONFIG_CAN_RDONLY)) {
					(void) FUNC9(FUNC0(TEXT_DOMAIN,
					    "All unsupported features are only "
					    "required for writing to the pool."
					    "\nThe pool can be imported using "
					    "'-o readonly=on'.\n"));
				}
			}
			/*
			 * Unsupported version.
			 */
			(void) FUNC19(hdl, EZFS_BADVERSION, desc);
			break;

		case EREMOTEIO:
			if (nv != NULL && FUNC5(nv,
			    ZPOOL_CONFIG_LOAD_INFO, &nvinfo) == 0) {
				char *hostname = "<unknown>";
				uint64_t hostid = 0;
				mmp_state_t mmp_state;

				mmp_state = FUNC2(nvinfo,
				    ZPOOL_CONFIG_MMP_STATE);

				if (FUNC3(nvinfo,
				    ZPOOL_CONFIG_MMP_HOSTNAME))
					hostname = FUNC1(nvinfo,
					    ZPOOL_CONFIG_MMP_HOSTNAME);

				if (FUNC3(nvinfo,
				    ZPOOL_CONFIG_MMP_HOSTID))
					hostid = FUNC2(nvinfo,
					    ZPOOL_CONFIG_MMP_HOSTID);

				if (mmp_state == MMP_STATE_ACTIVE) {
					(void) FUNC10(aux, sizeof (aux),
					    FUNC0(TEXT_DOMAIN, "pool is imp"
					    "orted on host '%s' (hostid=%lx).\n"
					    "Export the pool on the other "
					    "system, then run 'zpool import'."),
					    hostname, (unsigned long) hostid);
				} else if (mmp_state == MMP_STATE_NO_HOSTID) {
					(void) FUNC10(aux, sizeof (aux),
					    FUNC0(TEXT_DOMAIN, "pool has "
					    "the multihost property on and "
					    "the\nsystem's hostid is not set. "
					    "Set a unique system hostid with "
					    "the zgenhostid(8) command.\n"));
				}

				(void) FUNC20(hdl, aux);
			}
			(void) FUNC19(hdl, EZFS_ACTIVE_POOL, desc);
			break;

		case EINVAL:
			(void) FUNC19(hdl, EZFS_INVALCONFIG, desc);
			break;

		case EROFS:
			FUNC20(hdl, FUNC0(TEXT_DOMAIN,
			    "one or more devices is read only"));
			(void) FUNC19(hdl, EZFS_BADDEV, desc);
			break;

		case ENXIO:
			if (nv && FUNC5(nv,
			    ZPOOL_CONFIG_LOAD_INFO, &nvinfo) == 0 &&
			    FUNC5(nvinfo,
			    ZPOOL_CONFIG_MISSING_DEVICES, &missing) == 0) {
				(void) FUNC9(FUNC0(TEXT_DOMAIN,
				    "The devices below are missing or "
				    "corrupted, use '-m' to import the pool "
				    "anyway:\n"));
				FUNC8(hdl, NULL, missing, 2);
				(void) FUNC9("\n");
			}
			(void) FUNC30(hdl, error, desc);
			break;

		case EEXIST:
			(void) FUNC30(hdl, error, desc);
			break;

		case EBUSY:
			FUNC20(hdl, FUNC0(TEXT_DOMAIN,
			    "one or more devices are already in use\n"));
			(void) FUNC19(hdl, EZFS_BADDEV, desc);
			break;
		case ENAMETOOLONG:
			FUNC20(hdl, FUNC0(TEXT_DOMAIN,
			    "new name of at least one dataset is longer than "
			    "the maximum allowable length"));
			(void) FUNC19(hdl, EZFS_NAMETOOLONG, desc);
			break;
		default:
			(void) FUNC30(hdl, error, desc);
			FUNC24(hdl,
			    newname ? origname : thename, -error, nv);
			break;
		}

		FUNC4(nv);
		ret = -1;
	} else {
		zpool_handle_t *zhp;

		/*
		 * This should never fail, but play it safe anyway.
		 */
		if (FUNC27(hdl, thename, &zhp) != 0)
			ret = -1;
		else if (zhp != NULL)
			FUNC23(zhp);
		if (policy.zlp_rewind &
		    (ZPOOL_DO_REWIND | ZPOOL_TRY_REWIND)) {
			FUNC29(hdl, newname ? origname : thename,
			    ((policy.zlp_rewind & ZPOOL_TRY_REWIND) != 0), nv);
		}
		FUNC4(nv);
		return (0);
	}

	return (ret);
}