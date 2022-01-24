#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_15__ {TYPE_1__ member_0; } ;
typedef  TYPE_4__ zio_cksum_t ;
struct TYPE_16__ {scalar_t__ zfs_type; int /*<<< orphan*/  zfs_hdl; int /*<<< orphan*/  zfs_name; } ;
typedef  TYPE_5__ zfs_handle_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  errbuf ;
struct TYPE_13__ {int /*<<< orphan*/  drr_toname; int /*<<< orphan*/  drr_versioninfo; int /*<<< orphan*/  drr_magic; } ;
struct TYPE_14__ {TYPE_2__ drr_begin; } ;
struct TYPE_17__ {size_t drr_payloadlen; TYPE_3__ drr_u; int /*<<< orphan*/  drr_type; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_6__ dmu_replay_record_t ;
typedef  scalar_t__ boolean_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;

/* Variables and functions */
 int DMU_BACKUP_FEATURE_HOLDS ; 
 int DMU_BACKUP_FEATURE_SA_SPILL ; 
 int /*<<< orphan*/  DMU_BACKUP_MAGIC ; 
 int /*<<< orphan*/  DMU_COMPOUNDSTREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRR_BEGIN ; 
 int /*<<< orphan*/  EZFS_BADBACKUP ; 
 int /*<<< orphan*/  NV_ENCODE_XDR ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_VERSION ; 
 scalar_t__ ZFS_TYPE_FILESYSTEM ; 
 scalar_t__ ZPL_VERSION_SA ; 
 char* FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (TYPE_6__*,char*,size_t,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (int /*<<< orphan*/ ,char*,char const*,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char**,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int,TYPE_4__*) ; 
 int FUNC15 (char*,int,char*,char*,...) ; 
 char* FUNC16 (char*,char) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (TYPE_5__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC22(zfs_handle_t *zhp, const char *from, int fd,
    boolean_t gather_props, boolean_t recursive, boolean_t verbose,
    boolean_t dryrun, boolean_t raw, boolean_t replicate, boolean_t backup,
    boolean_t holds, boolean_t props, boolean_t doall,
    nvlist_t **fssp, avl_tree_t **fsavlp)
{
	int err = 0;
	char *packbuf = NULL;
	size_t buflen = 0;
	zio_cksum_t zc = { {0} };
	int featureflags = 0;
	/* name of filesystem/volume that contains snapshot we are sending */
	char tofs[ZFS_MAX_DATASET_NAME_LEN];
	/* short name of snap we are sending */
	char *tosnap = "";

	char errbuf[1024];
	(void) FUNC15(errbuf, sizeof (errbuf), FUNC3(TEXT_DOMAIN,
	    "warning: cannot send '%s'"), zhp->zfs_name);
	if (zhp->zfs_type == ZFS_TYPE_FILESYSTEM && FUNC21(zhp,
	    ZFS_PROP_VERSION) >= ZPL_VERSION_SA) {
		featureflags |= DMU_BACKUP_FEATURE_SA_SPILL;
	}

	if (holds)
		featureflags |= DMU_BACKUP_FEATURE_HOLDS;

	(void) FUNC18(tofs, zhp->zfs_name, ZFS_MAX_DATASET_NAME_LEN);
	char *at = FUNC16(tofs, '@');
	if (at != NULL) {
		*at = '\0';
		tosnap = at + 1;
	}

	if (gather_props) {
		nvlist_t *hdrnv = FUNC8();
		nvlist_t *fss = NULL;

		if (from != NULL)
			FUNC7(hdrnv, "fromsnap", from);
		FUNC7(hdrnv, "tosnap", tosnap);
		if (!recursive)
			FUNC5(hdrnv, "not_recursive");

		if (raw) {
			FUNC2(FUNC11(hdrnv, "raw"));
		}

		if ((err = FUNC10(zhp->zfs_hdl, tofs,
		    from, tosnap, recursive, raw, doall, replicate, verbose,
		    backup, holds, props, &fss, fsavlp)) != 0) {
			return (FUNC19(zhp->zfs_hdl, EZFS_BADBACKUP,
			    errbuf));
		}
		FUNC6(hdrnv, "fss", fss);
		FUNC2(FUNC13(hdrnv, &packbuf, &buflen, NV_ENCODE_XDR,
		    0));
		if (fssp != NULL) {
			*fssp = fss;
		} else {
			FUNC12(fss);
		}
		FUNC12(hdrnv);
	}

	if (!dryrun) {
		dmu_replay_record_t drr = { 0 };
		/* write first begin record */
		drr.drr_type = DRR_BEGIN;
		drr.drr_u.drr_begin.drr_magic = DMU_BACKUP_MAGIC;
		FUNC1(drr.drr_u.drr_begin.
		    drr_versioninfo, DMU_COMPOUNDSTREAM);
		FUNC0(drr.drr_u.drr_begin.
		    drr_versioninfo, featureflags);
		if (FUNC15(drr.drr_u.drr_begin.drr_toname,
		    sizeof (drr.drr_u.drr_begin.drr_toname), "%s@%s", tofs,
		    tosnap) >= sizeof (drr.drr_u.drr_begin.drr_toname)) {
			return (FUNC19(zhp->zfs_hdl, EZFS_BADBACKUP,
			    errbuf));
		}
		drr.drr_payloadlen = buflen;

		err = FUNC4(&drr, packbuf, buflen, &zc, fd);
		FUNC9(packbuf);
		if (err != 0) {
			FUNC20(zhp->zfs_hdl, FUNC17(err));
			return (FUNC19(zhp->zfs_hdl, EZFS_BADBACKUP,
			    errbuf));
		}
		err = FUNC14(fd, &zc);
		if (err != 0) {
			FUNC20(zhp->zfs_hdl, FUNC17(err));
			return (FUNC19(zhp->zfs_hdl, EZFS_BADBACKUP,
			    errbuf));
		}
	}
	return (0);
}