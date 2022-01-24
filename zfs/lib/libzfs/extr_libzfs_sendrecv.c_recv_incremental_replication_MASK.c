#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* member_0; char* zc_name; void* zc_cookie; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  tryname ;
struct TYPE_11__ {scalar_t__ verbose; scalar_t__ isprefix; int /*<<< orphan*/  force; scalar_t__ dryrun; } ;
typedef  TYPE_2__ recvflags_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int boolean_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;

/* Variables and functions */
 int B_FALSE ; 
 void* B_TRUE ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZFS_IOC_SET_PROP ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,scalar_t__,char**) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ *,int,void*,int,int,int,int,int,void*,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*,char**) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*,scalar_t__*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC17 (char*,...) ; 
 int FUNC18 (int /*<<< orphan*/ *,char*,scalar_t__,char*,TYPE_2__*) ; 
 int FUNC19 (int /*<<< orphan*/ *,char*,char*,TYPE_2__*) ; 
 int FUNC20 (int /*<<< orphan*/ *,char*,char*,scalar_t__,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (char const*,char*) ; 
 scalar_t__ FUNC24 (char const*) ; 
 char* FUNC25 (char*,char) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*) ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC29(libzfs_handle_t *hdl, const char *tofs,
    recvflags_t *flags, nvlist_t *stream_nv, avl_tree_t *stream_avl,
    nvlist_t *renamed)
{
	nvlist_t *local_nv, *deleted = NULL;
	avl_tree_t *local_avl;
	nvpair_t *fselem, *nextfselem;
	char *fromsnap;
	char newname[ZFS_MAX_DATASET_NAME_LEN];
	char guidname[32];
	int error;
	boolean_t needagain, progress, recursive;
	char *s1, *s2;

	FUNC0(0 == FUNC11(stream_nv, "fromsnap", &fromsnap));

	recursive = (FUNC9(stream_nv, "not_recursive") ==
	    ENOENT);

	if (flags->dryrun)
		return (0);

again:
	needagain = progress = B_FALSE;

	FUNC0(0 == FUNC6(&deleted, NV_UNIQUE_NAME, 0));

	if ((error = FUNC4(hdl, tofs, fromsnap, NULL,
	    recursive, B_TRUE, B_FALSE, recursive, B_FALSE, B_FALSE,
	    B_FALSE, B_TRUE, &local_nv, &local_avl)) != 0)
		return (error);

	/*
	 * Process deletes and renames
	 */
	for (fselem = FUNC13(local_nv, NULL);
	    fselem; fselem = nextfselem) {
		nvlist_t *nvfs, *snaps;
		nvlist_t *stream_nvfs = NULL;
		nvpair_t *snapelem, *nextsnapelem;
		uint64_t fromguid = 0;
		uint64_t originguid = 0;
		uint64_t stream_originguid = 0;
		uint64_t parent_fromsnap_guid, stream_parent_fromsnap_guid;
		char *fsname, *stream_fsname;

		nextfselem = FUNC13(local_nv, fselem);

		FUNC0(0 == FUNC15(fselem, &nvfs));
		FUNC0(0 == FUNC10(nvfs, "snaps", &snaps));
		FUNC0(0 == FUNC11(nvfs, "name", &fsname));
		FUNC0(0 == FUNC12(nvfs, "parentfromsnap",
		    &parent_fromsnap_guid));
		(void) FUNC12(nvfs, "origin", &originguid);

		/*
		 * First find the stream's fs, so we can check for
		 * a different origin (due to "zfs promote")
		 */
		for (snapelem = FUNC13(snaps, NULL);
		    snapelem; snapelem = FUNC13(snaps, snapelem)) {
			uint64_t thisguid;

			FUNC0(0 == FUNC16(snapelem, &thisguid));
			stream_nvfs = FUNC3(stream_avl, thisguid, NULL);

			if (stream_nvfs != NULL)
				break;
		}

		/* check for promote */
		(void) FUNC12(stream_nvfs, "origin",
		    &stream_originguid);
		if (stream_nvfs && originguid != stream_originguid) {
			switch (FUNC1(hdl, local_avl,
			    stream_originguid, originguid)) {
			case 1: {
				/* promote it! */
				nvlist_t *origin_nvfs;
				char *origin_fsname;

				origin_nvfs = FUNC3(local_avl, originguid,
				    NULL);
				FUNC0(0 == FUNC11(origin_nvfs,
				    "name", &origin_fsname));
				error = FUNC19(hdl, fsname, origin_fsname,
				    flags);
				if (error == 0)
					progress = B_TRUE;
				break;
			}
			default:
				break;
			case -1:
				FUNC2(local_avl);
				FUNC8(local_nv);
				return (-1);
			}
			/*
			 * We had/have the wrong origin, therefore our
			 * list of snapshots is wrong.  Need to handle
			 * them on the next pass.
			 */
			needagain = B_TRUE;
			continue;
		}

		for (snapelem = FUNC13(snaps, NULL);
		    snapelem; snapelem = nextsnapelem) {
			uint64_t thisguid;
			char *stream_snapname;
			nvlist_t *found, *props;

			nextsnapelem = FUNC13(snaps, snapelem);

			FUNC0(0 == FUNC16(snapelem, &thisguid));
			found = FUNC3(stream_avl, thisguid,
			    &stream_snapname);

			/* check for delete */
			if (found == NULL) {
				char name[ZFS_MAX_DATASET_NAME_LEN];

				if (!flags->force)
					continue;

				(void) FUNC21(name, sizeof (name), "%s@%s",
				    fsname, FUNC14(snapelem));

				error = FUNC18(hdl, name,
				    FUNC24(fsname)+1, newname, flags);
				if (error)
					needagain = B_TRUE;
				else
					progress = B_TRUE;
				FUNC22(guidname, "%llu",
				    (u_longlong_t)thisguid);
				FUNC5(deleted, guidname);
				continue;
			}

			stream_nvfs = found;

			if (0 == FUNC10(stream_nvfs, "snapprops",
			    &props) && 0 == FUNC10(props,
			    stream_snapname, &props)) {
				zfs_cmd_t zc = {"\0"};

				zc.zc_cookie = B_TRUE; /* received */
				(void) FUNC21(zc.zc_name, sizeof (zc.zc_name),
				    "%s@%s", fsname, FUNC14(snapelem));
				if (FUNC27(hdl, &zc,
				    props) == 0) {
					(void) FUNC28(hdl,
					    ZFS_IOC_SET_PROP, &zc);
					FUNC26(&zc);
				}
			}

			/* check for different snapname */
			if (FUNC23(FUNC14(snapelem),
			    stream_snapname) != 0) {
				char name[ZFS_MAX_DATASET_NAME_LEN];
				char tryname[ZFS_MAX_DATASET_NAME_LEN];

				(void) FUNC21(name, sizeof (name), "%s@%s",
				    fsname, FUNC14(snapelem));
				(void) FUNC21(tryname, sizeof (name), "%s@%s",
				    fsname, stream_snapname);

				error = FUNC20(hdl, name, tryname,
				    FUNC24(fsname)+1, newname, flags);
				if (error)
					needagain = B_TRUE;
				else
					progress = B_TRUE;
			}

			if (FUNC23(stream_snapname, fromsnap) == 0)
				fromguid = thisguid;
		}

		/* check for delete */
		if (stream_nvfs == NULL) {
			if (!flags->force)
				continue;

			error = FUNC18(hdl, fsname, FUNC24(tofs)+1,
			    newname, flags);
			if (error)
				needagain = B_TRUE;
			else
				progress = B_TRUE;
			FUNC22(guidname, "%llu",
			    (u_longlong_t)parent_fromsnap_guid);
			FUNC5(deleted, guidname);
			continue;
		}

		if (fromguid == 0) {
			if (flags->verbose) {
				(void) FUNC17("local fs %s does not have "
				    "fromsnap (%s in stream); must have "
				    "been deleted locally; ignoring\n",
				    fsname, fromsnap);
			}
			continue;
		}

		FUNC0(0 == FUNC11(stream_nvfs,
		    "name", &stream_fsname));
		FUNC0(0 == FUNC12(stream_nvfs,
		    "parentfromsnap", &stream_parent_fromsnap_guid));

		s1 = FUNC25(fsname, '/');
		s2 = FUNC25(stream_fsname, '/');

		/*
		 * Check if we're going to rename based on parent guid change
		 * and the current parent guid was also deleted. If it was then
		 * rename will fail and is likely unneeded, so avoid this and
		 * force an early retry to determine the new
		 * parent_fromsnap_guid.
		 */
		if (stream_parent_fromsnap_guid != 0 &&
		    parent_fromsnap_guid != 0 &&
		    stream_parent_fromsnap_guid != parent_fromsnap_guid) {
			FUNC22(guidname, "%llu",
			    (u_longlong_t)parent_fromsnap_guid);
			if (FUNC7(deleted, guidname)) {
				progress = B_TRUE;
				needagain = B_TRUE;
				goto doagain;
			}
		}

		/*
		 * Check for rename. If the exact receive path is specified, it
		 * does not count as a rename, but we still need to check the
		 * datasets beneath it.
		 */
		if ((stream_parent_fromsnap_guid != 0 &&
		    parent_fromsnap_guid != 0 &&
		    stream_parent_fromsnap_guid != parent_fromsnap_guid) ||
		    ((flags->isprefix || FUNC23(tofs, fsname) != 0) &&
		    (s1 != NULL) && (s2 != NULL) && FUNC23(s1, s2) != 0)) {
			nvlist_t *parent;
			char tryname[ZFS_MAX_DATASET_NAME_LEN];

			parent = FUNC3(local_avl,
			    stream_parent_fromsnap_guid, NULL);
			/*
			 * NB: parent might not be found if we used the
			 * tosnap for stream_parent_fromsnap_guid,
			 * because the parent is a newly-created fs;
			 * we'll be able to rename it after we recv the
			 * new fs.
			 */
			if (parent != NULL) {
				char *pname;

				FUNC0(0 == FUNC11(parent, "name",
				    &pname));
				(void) FUNC21(tryname, sizeof (tryname),
				    "%s%s", pname, FUNC25(stream_fsname, '/'));
			} else {
				tryname[0] = '\0';
				if (flags->verbose) {
					(void) FUNC17("local fs %s new parent "
					    "not found\n", fsname);
				}
			}

			newname[0] = '\0';

			error = FUNC20(hdl, fsname, tryname,
			    FUNC24(tofs)+1, newname, flags);

			if (renamed != NULL && newname[0] != '\0') {
				FUNC0(0 == FUNC5(renamed,
				    newname));
			}

			if (error)
				needagain = B_TRUE;
			else
				progress = B_TRUE;
		}
	}

doagain:
	FUNC2(local_avl);
	FUNC8(local_nv);
	FUNC8(deleted);

	if (needagain && progress) {
		/* do another pass to fix up temporary names */
		if (flags->verbose)
			(void) FUNC17("another pass:\n");
		goto again;
	}

	return (needagain || error != 0);
}