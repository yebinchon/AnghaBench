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
struct TYPE_10__ {char* dds_origin; } ;
struct TYPE_11__ {TYPE_1__ zfs_dmustats; } ;
typedef  TYPE_2__ zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  keylocation ;
typedef  int boolean_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DCP_CMD_FORCE_INHERIT ; 
 int /*<<< orphan*/  DCP_CMD_FORCE_NEW_KEY ; 
 int ENOENT ; 
 int MAXNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_ENCRYPTION ; 
 int /*<<< orphan*/  ZFS_PROP_KEYLOCATION ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 scalar_t__ ZIO_CRYPT_OFF ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,scalar_t__,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__*) ; 
 char* FUNC9 (char*,char) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int*,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC19(libzfs_handle_t *hdl, const char *top_zfs,
    nvlist_t *stream_nv, avl_tree_t *stream_avl)
{
	int err;
	nvpair_t *fselem = NULL;
	nvlist_t *stream_fss;

	FUNC0(0 == FUNC4(stream_nv, "fss", &stream_fss));

	while ((fselem = FUNC6(stream_fss, fselem)) != NULL) {
		zfs_handle_t *zhp = NULL;
		uint64_t crypt;
		nvlist_t *snaps, *props, *stream_nvfs = NULL;
		nvpair_t *snapel = NULL;
		boolean_t is_encroot, is_clone, stream_encroot;
		char *cp;
		char *stream_keylocation = NULL;
		char keylocation[MAXNAMELEN];
		char fsname[ZFS_MAX_DATASET_NAME_LEN];

		keylocation[0] = '\0';
		FUNC0(0 == FUNC7(fselem, &stream_nvfs));
		FUNC0(0 == FUNC4(stream_nvfs, "snaps", &snaps));
		FUNC0(0 == FUNC4(stream_nvfs, "props", &props));
		stream_encroot = FUNC3(stream_nvfs, "is_encroot");

		/* find a snapshot from the stream that exists locally */
		err = ENOENT;
		while ((snapel = FUNC6(snaps, snapel)) != NULL) {
			uint64_t guid;

			FUNC0(0 == FUNC8(snapel, &guid));
			err = FUNC1(hdl, top_zfs, guid, B_FALSE,
			    fsname);
			if (err == 0)
				break;
		}

		if (err != 0)
			continue;

		cp = FUNC9(fsname, '@');
		if (cp != NULL)
			*cp = '\0';

		zhp = FUNC13(hdl, fsname, ZFS_TYPE_DATASET);
		if (zhp == NULL) {
			err = ENOENT;
			goto error;
		}

		crypt = FUNC15(zhp, ZFS_PROP_ENCRYPTION);
		is_clone = zhp->zfs_dmustats.dds_origin[0] != '\0';
		(void) FUNC12(zhp, &is_encroot, NULL);

		/* we don't need to do anything for unencrypted datasets */
		if (crypt == ZIO_CRYPT_OFF) {
			FUNC11(zhp);
			continue;
		}

		/*
		 * If the dataset is flagged as an encryption root, was not
		 * received as a clone and is not currently an encryption root,
		 * force it to become one. Fixup the keylocation if necessary.
		 */
		if (stream_encroot) {
			if (!is_clone && !is_encroot) {
				err = FUNC2(fsname,
				    DCP_CMD_FORCE_NEW_KEY, NULL, NULL, 0);
				if (err != 0) {
					FUNC11(zhp);
					goto error;
				}
			}

			FUNC0(0 == FUNC5(props,
			    FUNC17(ZFS_PROP_KEYLOCATION),
			    &stream_keylocation));

			/*
			 * Refresh the properties in case the call to
			 * lzc_change_key() changed the value.
			 */
			FUNC18(zhp);
			err = FUNC14(zhp, ZFS_PROP_KEYLOCATION,
			    keylocation, sizeof (keylocation), NULL, NULL,
			    0, B_TRUE);
			if (err != 0) {
				FUNC11(zhp);
				goto error;
			}

			if (FUNC10(keylocation, stream_keylocation) != 0) {
				err = FUNC16(zhp,
				    FUNC17(ZFS_PROP_KEYLOCATION),
				    stream_keylocation);
				if (err != 0) {
					FUNC11(zhp);
					goto error;
				}
			}
		}

		/*
		 * If the dataset is not flagged as an encryption root and is
		 * currently an encryption root, force it to inherit from its
		 * parent. The root of a raw send should never be
		 * force-inherited.
		 */
		if (!stream_encroot && is_encroot &&
		    FUNC10(top_zfs, fsname) != 0) {
			err = FUNC2(fsname, DCP_CMD_FORCE_INHERIT,
			    NULL, NULL, 0);
			if (err != 0) {
				FUNC11(zhp);
				goto error;
			}
		}

		FUNC11(zhp);
	}

	return (0);

error:
	return (err);
}