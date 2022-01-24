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
struct ext2fs_extent {int e_flags; } ;
struct ext2_inode {int i_flags; } ;
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  TYPE_1__* ext2_filsys ;
typedef  int /*<<< orphan*/  ext2_extent_handle_t ;
typedef  scalar_t__ errcode_t ;
struct TYPE_4__ {int flags; int /*<<< orphan*/  super; } ;

/* Variables and functions */
 scalar_t__ EXT2_ET_EXTENT_CSUM_INVALID ; 
 scalar_t__ EXT2_ET_EXTENT_NO_NEXT ; 
 scalar_t__ EXT2_ET_INODE_NOT_EXTENT ; 
 int EXT2_EXTENT_FLAGS_LEAF ; 
 int /*<<< orphan*/  EXT2_EXTENT_LAST_SIB ; 
 int /*<<< orphan*/  EXT2_EXTENT_NEXT ; 
 int /*<<< orphan*/  EXT2_EXTENT_ROOT ; 
 int EXT2_FLAG_IGNORE_CSUM_ERRORS ; 
 int EXT4_EXTENTS_FL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ext2fs_extent*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

errcode_t FUNC5(ext2_filsys fs, ext2_ino_t ino,
				       struct ext2_inode *inode)
{
	ext2_extent_handle_t	handle;
	struct ext2fs_extent	extent;
	errcode_t		errcode;
	int    			save_flags = fs->flags;

	if (!FUNC3(fs->super) ||
	    (inode && !(inode->i_flags & EXT4_EXTENTS_FL)))
		return 0;

	errcode = FUNC2(fs, ino, inode, &handle);
	if (errcode) {
		if (errcode == EXT2_ET_INODE_NOT_EXTENT)
			errcode = 0;
		return errcode;
	}

	fs->flags &= ~EXT2_FLAG_IGNORE_CSUM_ERRORS;
	errcode = FUNC1(handle, EXT2_EXTENT_ROOT, &extent);
	if (errcode)
		goto out;

	do {
		/* Skip to the end of a block of leaf nodes */
		if (extent.e_flags & EXT2_EXTENT_FLAGS_LEAF) {
			errcode = FUNC1(handle,
						    EXT2_EXTENT_LAST_SIB,
						    &extent);
			if (errcode)
				break;
		}

		errcode = FUNC1(handle, EXT2_EXTENT_NEXT, &extent);
		if (errcode == EXT2_ET_EXTENT_CSUM_INVALID)
			errcode = FUNC4(handle);
	} while (errcode == 0);

out:
	/* Ok if we run off the end */
	if (errcode == EXT2_ET_EXTENT_NO_NEXT)
		errcode = 0;
	FUNC0(handle);
	fs->flags = save_flags;
	return errcode;
}