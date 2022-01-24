#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int zfs_type; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_9__ {scalar_t__ domount; int /*<<< orphan*/  nomount; } ;
typedef  TYPE_2__ recvflags_t ;
typedef  int /*<<< orphan*/  prop_changelist_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  avl_tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  CL_GATHER_MOUNT_ALWAYS ; 
 int ENOENT ; 
 int O_EXCL ; 
 int O_RDWR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ZFS_DEV ; 
 int /*<<< orphan*/  ZFS_PROP_MOUNTPOINT ; 
 int ZFS_TYPE_FILESYSTEM ; 
 int ZFS_TYPE_VOLUME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,char**) ; 
 int FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,char const*,char*,TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC15(libzfs_handle_t *hdl, const char *tosnap, nvlist_t *props,
    recvflags_t *flags, int infd, avl_tree_t *stream_avl)
{
	char *top_zfs = NULL;
	int err;
	int cleanup_fd;
	uint64_t action_handle = 0;
	struct stat sb;
	char *originsnap = NULL;

	/*
	 * The only way fstat can fail is if we do not have a valid file
	 * descriptor.
	 */
	if (FUNC7(infd, &sb) == -1) {
		FUNC11("fstat");
		return (-2);
	}

	/*
	 * It is not uncommon for gigabytes to be processed in zfs receive.
	 * Speculatively increase the buffer size if supported by the platform.
	 */
	if (FUNC0(sb.st_mode))
		FUNC8(infd);

	if (props) {
		err = FUNC9(props, "origin", &originsnap);
		if (err && err != ENOENT)
			return (err);
	}

	cleanup_fd = FUNC10(ZFS_DEV, O_RDWR|O_EXCL);
	FUNC1(cleanup_fd >= 0);

	err = FUNC14(hdl, tosnap, originsnap, flags, infd, NULL, NULL,
	    stream_avl, &top_zfs, cleanup_fd, &action_handle, NULL, props);

	FUNC1(0 == FUNC5(cleanup_fd));

	if (err == 0 && !flags->nomount && flags->domount && top_zfs) {
		zfs_handle_t *zhp = NULL;
		prop_changelist_t *clp = NULL;

		zhp = FUNC13(hdl, top_zfs,
		    ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME);
		if (zhp == NULL) {
			err = -1;
			goto out;
		} else {
			if (zhp->zfs_type == ZFS_TYPE_VOLUME) {
				FUNC12(zhp);
				goto out;
			}

			clp = FUNC3(zhp, ZFS_PROP_MOUNTPOINT,
			    CL_GATHER_MOUNT_ALWAYS, 0);
			FUNC12(zhp);
			if (clp == NULL) {
				err = -1;
				goto out;
			}

			/* mount and share received datasets */
			err = FUNC4(clp);
			FUNC2(clp);
			if (err != 0)
				err = -1;
		}
	}

out:
	if (top_zfs)
		FUNC6(top_zfs);

	return (err);
}