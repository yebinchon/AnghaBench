#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_20__ {TYPE_1__ member_0; } ;
typedef  TYPE_3__ zio_cksum_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct drr_begin {scalar_t__ drr_magic; scalar_t__ drr_versioninfo; scalar_t__ drr_creation_time; scalar_t__ drr_type; scalar_t__ drr_flags; scalar_t__ drr_toguid; scalar_t__ drr_fromguid; char* drr_toname; } ;
struct TYPE_21__ {void* holds; void* byteswap; scalar_t__ isprefix; } ;
typedef  TYPE_4__ recvflags_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  nonpackage_sendfs ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  drr ;
struct TYPE_19__ {struct drr_begin drr_begin; } ;
struct TYPE_22__ {scalar_t__ drr_type; scalar_t__ drr_payloadlen; TYPE_2__ drr_u; } ;
typedef  TYPE_5__ dmu_replay_record_t ;
typedef  int boolean_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 void* B_FALSE ; 
 void* B_TRUE ; 
 int DMU_BACKUP_FEATURE_HOLDS ; 
 scalar_t__ DMU_BACKUP_MAGIC ; 
 int DMU_COMPOUNDSTREAM ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int DMU_SUBSTREAM ; 
 scalar_t__ DRR_BEGIN ; 
 scalar_t__ DRR_END ; 
 int ENODATA ; 
 int /*<<< orphan*/  EZFS_BADPROP ; 
 int /*<<< orphan*/  EZFS_BADSTREAM ; 
 int /*<<< orphan*/  EZFS_NOENT ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 char* FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int,TYPE_3__*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,TYPE_5__*,int,void*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*) ; 
 char* FUNC12 (char*,char) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int FUNC18 (int /*<<< orphan*/ *,int,char const*,char const*,TYPE_4__*,TYPE_5__*,TYPE_5__*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**,int,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *,int,char const*,TYPE_4__*,TYPE_5__*,TYPE_3__*,char**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC20(libzfs_handle_t *hdl, const char *tosnap,
    const char *originsnap, recvflags_t *flags, int infd, const char *sendfs,
    nvlist_t *stream_nv, avl_tree_t *stream_avl, char **top_zfs, int cleanup_fd,
    uint64_t *action_handlep, const char *finalsnap, nvlist_t *cmdprops)
{
	int err;
	dmu_replay_record_t drr, drr_noswap;
	struct drr_begin *drrb = &drr.drr_u.drr_begin;
	char errbuf[1024];
	zio_cksum_t zcksum = { { 0 } };
	uint64_t featureflags;
	int hdrtype;

	(void) FUNC11(errbuf, sizeof (errbuf), FUNC8(TEXT_DOMAIN,
	    "cannot receive"));

	/* check cmdline props, raise an error if they cannot be received */
	if (!FUNC17(hdl, cmdprops, errbuf)) {
		return (FUNC15(hdl, EZFS_BADPROP, errbuf));
	}

	if (flags->isprefix &&
	    !FUNC14(hdl, tosnap, ZFS_TYPE_DATASET)) {
		FUNC16(hdl, FUNC8(TEXT_DOMAIN, "specified fs "
		    "(%s) does not exist"), tosnap);
		return (FUNC15(hdl, EZFS_NOENT, errbuf));
	}
	if (originsnap &&
	    !FUNC14(hdl, originsnap, ZFS_TYPE_DATASET)) {
		FUNC16(hdl, FUNC8(TEXT_DOMAIN, "specified origin fs "
		    "(%s) does not exist"), originsnap);
		return (FUNC15(hdl, EZFS_NOENT, errbuf));
	}

	/* read in the BEGIN record */
	if (0 != (err = FUNC10(hdl, infd, &drr, sizeof (drr), B_FALSE,
	    &zcksum)))
		return (err);

	if (drr.drr_type == DRR_END || drr.drr_type == FUNC0(DRR_END)) {
		/* It's the double end record at the end of a package */
		return (ENODATA);
	}

	/* the kernel needs the non-byteswapped begin record */
	drr_noswap = drr;

	flags->byteswap = B_FALSE;
	if (drrb->drr_magic == FUNC1(DMU_BACKUP_MAGIC)) {
		/*
		 * We computed the checksum in the wrong byteorder in
		 * recv_read() above; do it again correctly.
		 */
		FUNC7(&zcksum, sizeof (zio_cksum_t));
		FUNC9(&drr, sizeof (drr), &zcksum);
		flags->byteswap = B_TRUE;

		drr.drr_type = FUNC0(drr.drr_type);
		drr.drr_payloadlen = FUNC0(drr.drr_payloadlen);
		drrb->drr_magic = FUNC1(drrb->drr_magic);
		drrb->drr_versioninfo = FUNC1(drrb->drr_versioninfo);
		drrb->drr_creation_time = FUNC1(drrb->drr_creation_time);
		drrb->drr_type = FUNC0(drrb->drr_type);
		drrb->drr_flags = FUNC0(drrb->drr_flags);
		drrb->drr_toguid = FUNC1(drrb->drr_toguid);
		drrb->drr_fromguid = FUNC1(drrb->drr_fromguid);
	}

	if (drrb->drr_magic != DMU_BACKUP_MAGIC || drr.drr_type != DRR_BEGIN) {
		FUNC16(hdl, FUNC8(TEXT_DOMAIN, "invalid "
		    "stream (bad magic number)"));
		return (FUNC15(hdl, EZFS_BADSTREAM, errbuf));
	}

	featureflags = FUNC2(drrb->drr_versioninfo);
	hdrtype = FUNC3(drrb->drr_versioninfo);

	if (!FUNC4(featureflags) ||
	    (hdrtype != DMU_SUBSTREAM && hdrtype != DMU_COMPOUNDSTREAM)) {
		FUNC16(hdl, FUNC8(TEXT_DOMAIN,
		    "stream has unsupported feature, feature flags = %lx"),
		    featureflags);
		return (FUNC15(hdl, EZFS_BADSTREAM, errbuf));
	}

	/* Holds feature is set once in the compound stream header. */
	boolean_t holds = (FUNC2(drrb->drr_versioninfo) &
	    DMU_BACKUP_FEATURE_HOLDS);
	if (holds)
		flags->holds = B_TRUE;

	if (FUNC12(drrb->drr_toname, '@') == NULL) {
		FUNC16(hdl, FUNC8(TEXT_DOMAIN, "invalid "
		    "stream (bad snapshot name)"));
		return (FUNC15(hdl, EZFS_BADSTREAM, errbuf));
	}

	if (FUNC3(drrb->drr_versioninfo) == DMU_SUBSTREAM) {
		char nonpackage_sendfs[ZFS_MAX_DATASET_NAME_LEN];
		if (sendfs == NULL) {
			/*
			 * We were not called from zfs_receive_package(). Get
			 * the fs specified by 'zfs send'.
			 */
			char *cp;
			(void) FUNC13(nonpackage_sendfs,
			    drr.drr_u.drr_begin.drr_toname,
			    sizeof (nonpackage_sendfs));
			if ((cp = FUNC12(nonpackage_sendfs, '@')) != NULL)
				*cp = '\0';
			sendfs = nonpackage_sendfs;
			FUNC5(finalsnap == NULL);
		}
		return (FUNC18(hdl, infd, tosnap, originsnap, flags,
		    &drr, &drr_noswap, sendfs, stream_nv, stream_avl, top_zfs,
		    cleanup_fd, action_handlep, finalsnap, cmdprops));
	} else {
		FUNC6(FUNC3(drrb->drr_versioninfo) ==
		    DMU_COMPOUNDSTREAM);
		return (FUNC19(hdl, infd, tosnap, flags, &drr,
		    &zcksum, top_zfs, cleanup_fd, action_handlep, cmdprops));
	}
}