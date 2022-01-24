#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_cksum_t ;
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  tofs ;
struct drr_begin {scalar_t__ drr_magic; char* drr_toname; int /*<<< orphan*/  drr_versioninfo; } ;
typedef  int /*<<< orphan*/  sendfs ;
struct TYPE_14__ {int /*<<< orphan*/  nomount; int /*<<< orphan*/  dryrun; scalar_t__ istail; scalar_t__ isprefix; int /*<<< orphan*/  byteswap; } ;
typedef  TYPE_3__ recvflags_t ;
typedef  int /*<<< orphan*/  prop_changelist_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  drre ;
struct TYPE_11__ {void** zc_word; } ;
struct TYPE_12__ {TYPE_10__ drr_checksum; } ;
struct TYPE_13__ {struct drr_begin drr_begin; TYPE_1__ drr_end; } ;
struct TYPE_15__ {scalar_t__ drr_type; scalar_t__ drr_payloadlen; TYPE_2__ drr_u; } ;
typedef  TYPE_4__ dmu_replay_record_t ;
typedef  int boolean_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 void* FUNC1 (void*) ; 
 int B_FALSE ; 
 scalar_t__ DMU_BACKUP_MAGIC ; 
 scalar_t__ DMU_COMPOUNDSTREAM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ DRR_BEGIN ; 
 scalar_t__ DRR_END ; 
 int ENODATA ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  EZFS_BADSTREAM ; 
 int /*<<< orphan*/  EZFS_NOMEM ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_MOUNTPOINT ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ *,char*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ *,int,TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (char*,int,char*) ; 
 char* FUNC24 (char const*,char) ; 
 int FUNC25 (char*,char*) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC27 (char*,char const*,int) ; 
 char* FUNC28 (char*,char) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC33 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,TYPE_3__*,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**,int,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC34(libzfs_handle_t *hdl, int fd, const char *destname,
    recvflags_t *flags, dmu_replay_record_t *drr, zio_cksum_t *zc,
    char **top_zfs, int cleanup_fd, uint64_t *action_handlep,
    nvlist_t *cmdprops)
{
	nvlist_t *stream_nv = NULL;
	avl_tree_t *stream_avl = NULL;
	char *fromsnap = NULL;
	char *sendsnap = NULL;
	char *cp;
	char tofs[ZFS_MAX_DATASET_NAME_LEN];
	char sendfs[ZFS_MAX_DATASET_NAME_LEN];
	char errbuf[1024];
	dmu_replay_record_t drre;
	int error;
	boolean_t anyerr = B_FALSE;
	boolean_t softerr = B_FALSE;
	boolean_t recursive, raw;

	(void) FUNC23(errbuf, sizeof (errbuf), FUNC9(TEXT_DOMAIN,
	    "cannot receive"));

	FUNC5(drr->drr_type == DRR_BEGIN);
	FUNC5(drr->drr_u.drr_begin.drr_magic == DMU_BACKUP_MAGIC);
	FUNC5(FUNC2(drr->drr_u.drr_begin.drr_versioninfo) ==
	    DMU_COMPOUNDSTREAM);

	/*
	 * Read in the nvlist from the stream.
	 */
	if (drr->drr_payloadlen != 0) {
		error = FUNC22(hdl, fd, drr->drr_payloadlen,
		    &stream_nv, flags->byteswap, zc);
		if (error) {
			error = FUNC30(hdl, EZFS_BADSTREAM, errbuf);
			goto out;
		}
	}

	recursive = (FUNC14(stream_nv, "not_recursive") ==
	    ENOENT);
	raw = (FUNC14(stream_nv, "raw") == 0);

	if (recursive && FUNC24(destname, '@')) {
		FUNC31(hdl, FUNC9(TEXT_DOMAIN,
		    "cannot specify snapshot name for multi-snapshot stream"));
		error = FUNC30(hdl, EZFS_BADSTREAM, errbuf);
		goto out;
	}

	/*
	 * Read in the end record and verify checksum.
	 */
	if (0 != (error = FUNC21(hdl, fd, &drre, sizeof (drre),
	    flags->byteswap, NULL)))
		goto out;
	if (flags->byteswap) {
		drre.drr_type = FUNC0(drre.drr_type);
		drre.drr_u.drr_end.drr_checksum.zc_word[0] =
		    FUNC1(drre.drr_u.drr_end.drr_checksum.zc_word[0]);
		drre.drr_u.drr_end.drr_checksum.zc_word[1] =
		    FUNC1(drre.drr_u.drr_end.drr_checksum.zc_word[1]);
		drre.drr_u.drr_end.drr_checksum.zc_word[2] =
		    FUNC1(drre.drr_u.drr_end.drr_checksum.zc_word[2]);
		drre.drr_u.drr_end.drr_checksum.zc_word[3] =
		    FUNC1(drre.drr_u.drr_end.drr_checksum.zc_word[3]);
	}
	if (drre.drr_type != DRR_END) {
		error = FUNC30(hdl, EZFS_BADSTREAM, errbuf);
		goto out;
	}
	if (!FUNC4(drre.drr_u.drr_end.drr_checksum, *zc)) {
		FUNC31(hdl, FUNC9(TEXT_DOMAIN,
		    "incorrect header checksum"));
		error = FUNC30(hdl, EZFS_BADSTREAM, errbuf);
		goto out;
	}

	(void) FUNC16(stream_nv, "fromsnap", &fromsnap);

	if (drr->drr_payloadlen != 0) {
		nvlist_t *stream_fss;

		FUNC3(0 == FUNC15(stream_nv, "fss",
		    &stream_fss));
		if ((stream_avl = FUNC10(stream_fss)) == NULL) {
			FUNC31(hdl, FUNC9(TEXT_DOMAIN,
			    "couldn't allocate avl tree"));
			error = FUNC30(hdl, EZFS_NOMEM, errbuf);
			goto out;
		}

		if (fromsnap != NULL && recursive) {
			nvlist_t *renamed = NULL;
			nvpair_t *pair = NULL;

			(void) FUNC27(tofs, destname, sizeof (tofs));
			if (flags->isprefix) {
				struct drr_begin *drrb = &drr->drr_u.drr_begin;
				int i;

				if (flags->istail) {
					cp = FUNC28(drrb->drr_toname, '/');
					if (cp == NULL) {
						(void) FUNC26(tofs, "/",
						    sizeof (tofs));
						i = 0;
					} else {
						i = (cp - drrb->drr_toname);
					}
				} else {
					i = FUNC25(drrb->drr_toname, "/@");
				}
				/* zfs_receive_one() will create_parents() */
				(void) FUNC26(tofs, &drrb->drr_toname[i],
				    sizeof (tofs));
				*FUNC24(tofs, '@') = '\0';
			}

			if (!flags->dryrun && !flags->nomount) {
				FUNC3(0 == FUNC12(&renamed,
				    NV_UNIQUE_NAME, 0));
			}

			softerr = FUNC20(hdl, tofs, flags,
			    stream_nv, stream_avl, renamed);

			/* Unmount renamed filesystems before receiving. */
			while ((pair = FUNC17(renamed,
			    pair)) != NULL) {
				zfs_handle_t *zhp;
				prop_changelist_t *clp = NULL;

				zhp = FUNC32(hdl, FUNC18(pair),
				    ZFS_TYPE_FILESYSTEM);
				if (zhp != NULL) {
					clp = FUNC7(zhp,
					    ZFS_PROP_MOUNTPOINT, 0, 0);
					FUNC29(zhp);
					if (clp != NULL) {
						softerr |=
						    FUNC8(clp);
						FUNC6(clp);
					}
				}
			}

			FUNC13(renamed);
		}
	}

	/*
	 * Get the fs specified by the first path in the stream (the top level
	 * specified by 'zfs send') and pass it to each invocation of
	 * zfs_receive_one().
	 */
	(void) FUNC27(sendfs, drr->drr_u.drr_begin.drr_toname,
	    sizeof (sendfs));
	if ((cp = FUNC24(sendfs, '@')) != NULL) {
		*cp = '\0';
		/*
		 * Find the "sendsnap", the final snapshot in a replication
		 * stream.  zfs_receive_one() handles certain errors
		 * differently, depending on if the contained stream is the
		 * last one or not.
		 */
		sendsnap = (cp + 1);
	}

	/* Finally, receive each contained stream */
	do {
		/*
		 * we should figure out if it has a recoverable
		 * error, in which case do a recv_skip() and drive on.
		 * Note, if we fail due to already having this guid,
		 * zfs_receive_one() will take care of it (ie,
		 * recv_skip() and return 0).
		 */
		error = FUNC33(hdl, destname, NULL, flags, fd,
		    sendfs, stream_nv, stream_avl, top_zfs, cleanup_fd,
		    action_handlep, sendsnap, cmdprops);
		if (error == ENODATA) {
			error = 0;
			break;
		}
		anyerr |= error;
	} while (error == 0);

	if (drr->drr_payloadlen != 0 && recursive && fromsnap != NULL) {
		/*
		 * Now that we have the fs's they sent us, try the
		 * renames again.
		 */
		softerr = FUNC20(hdl, tofs, flags,
		    stream_nv, stream_avl, NULL);
	}

	if (raw && softerr == 0 && *top_zfs != NULL) {
		softerr = FUNC19(hdl, *top_zfs,
		    stream_nv, stream_avl);
	}

out:
	FUNC11(stream_avl);
	FUNC13(stream_nv);
	if (softerr)
		error = -2;
	if (anyerr)
		error = -1;
	return (error);
}