#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct ext2_inode {int i_mode; int i_links_count; int /*<<< orphan*/  i_size; int /*<<< orphan*/ * i_block; int /*<<< orphan*/  i_flags; scalar_t__ i_gid; scalar_t__ i_uid; } ;
typedef  int /*<<< orphan*/  parent_inode ;
typedef  scalar_t__ ext2_ino_t ;
typedef  TYPE_1__* ext2_filsys ;
typedef  int /*<<< orphan*/  ext2_extent_handle_t ;
typedef  scalar_t__ errcode_t ;
typedef  int /*<<< orphan*/  blk64_t ;
struct TYPE_20__ {int umask; int /*<<< orphan*/  super; int /*<<< orphan*/  blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ EXT2_ET_DIR_EXISTS ; 
 scalar_t__ EXT2_ET_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_EXT2FS_FILSYS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT2_FT_DIR ; 
 int /*<<< orphan*/  EXT4_EXTENTS_FL ; 
 int /*<<< orphan*/  EXT4_INLINE_DATA_FL ; 
 int /*<<< orphan*/  EXT4_MIN_INLINE_DATA_SIZE ; 
 int LINUX_S_IFDIR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__,struct ext2_inode*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__,struct ext2_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char**) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,struct ext2_inode*,int) ; 
 scalar_t__ FUNC11 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,scalar_t__,int,int) ; 
 scalar_t__ FUNC13 (TYPE_1__*,scalar_t__,char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_1__*,scalar_t__,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (TYPE_1__*,scalar_t__,scalar_t__,char**) ; 
 scalar_t__ FUNC17 (TYPE_1__*,scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (TYPE_1__*,scalar_t__,int,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC19 (TYPE_1__*,scalar_t__,struct ext2_inode*) ; 
 scalar_t__ FUNC20 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC21 (TYPE_1__*,scalar_t__,struct ext2_inode*) ; 
 scalar_t__ FUNC22 (TYPE_1__*,scalar_t__,struct ext2_inode*) ; 
 int /*<<< orphan*/  FUNC23 (struct ext2_inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (char const*) ; 

errcode_t FUNC25(ext2_filsys fs, ext2_ino_t parent, ext2_ino_t inum,
		       const char *name)
{
	ext2_extent_handle_t	handle;
	errcode_t		retval;
	struct ext2_inode	parent_inode, inode;
	ext2_ino_t		ino = inum;
	ext2_ino_t		scratch_ino;
	blk64_t			blk;
	char			*block = 0;
	int			inline_data = 0;

	FUNC0(fs, EXT2_ET_MAGIC_EXT2FS_FILSYS);

	/*
	 * Create a new dir with inline data iff this feature is enabled
	 * and ino >= EXT2_FIRST_INO.
	 */
	if ((!ino || ino >= FUNC1(fs->super)) &&
	    FUNC9(fs->super))
		inline_data = 1;

	/*
	 * Allocate an inode, if necessary
	 */
	if (!ino) {
		retval = FUNC18(fs, parent, LINUX_S_IFDIR | 0755,
					  0, &ino);
		if (retval)
			goto cleanup;
	}

	/*
	 * Allocate a data block for the directory
	 */
	FUNC23(&inode, 0, sizeof(struct ext2_inode));
	if (!inline_data) {
		retval = FUNC15(fs, FUNC6(fs, ino,
								      &inode,
								      0),
					   NULL, &blk);
		if (retval)
			goto cleanup;
	}

	/*
	 * Create a scratch template for the directory
	 */
	if (inline_data)
		retval = FUNC17(fs, ino, parent,
						    inode.i_block);
	else
		retval = FUNC16(fs, ino, parent, &block);
	if (retval)
		goto cleanup;

	/*
	 * Get the parent's inode, if necessary
	 */
	if (parent != ino) {
		retval = FUNC19(fs, parent, &parent_inode);
		if (retval)
			goto cleanup;
	} else
		FUNC23(&parent_inode, 0, sizeof(parent_inode));

	/*
	 * Create the inode structure....
	 */
	inode.i_mode = LINUX_S_IFDIR | (0777 & ~fs->umask);
	inode.i_uid = inode.i_gid = 0;
	if (inline_data) {
		inode.i_flags |= EXT4_INLINE_DATA_FL;
		inode.i_size = EXT4_MIN_INLINE_DATA_SIZE;
	} else {
		if (FUNC8(fs->super))
			inode.i_flags |= EXT4_EXTENTS_FL;
		else
			inode.i_block[0] = blk;
		inode.i_size = fs->blocksize;
		FUNC10(fs, &inode, 1);
	}
	inode.i_links_count = 2;

	/*
	 * Write out the inode and inode data block.  The inode generation
	 * number is assigned by write_new_inode, which means that the call
	 * to write_dir_block must come after that.
	 */
	retval = FUNC22(fs, ino, &inode);
	if (retval)
		goto cleanup;
	if (inline_data) {
		/* init "system.data" for new dir */
		retval = FUNC11(fs, ino);
	} else {
		retval = FUNC20(fs, blk, block, 0, ino);
		if (retval)
			goto cleanup;

		if (FUNC8(fs->super)) {
			retval = FUNC4(fs, ino, &inode, &handle);
			if (retval)
				goto cleanup;
			retval = FUNC5(handle, 0, blk, 0);
			FUNC3(handle);
			if (retval)
				goto cleanup;
		}
	}

	/*
	 * Link the directory into the filesystem hierarchy
	 */
	if (name) {
		retval = FUNC14(fs, parent, name, FUNC24(name), 0,
				       &scratch_ino);
		if (!retval) {
			retval = EXT2_ET_DIR_EXISTS;
			name = 0;
			goto cleanup;
		}
		if (retval != EXT2_ET_FILE_NOT_FOUND)
			goto cleanup;
		retval = FUNC13(fs, parent, name, ino, EXT2_FT_DIR);
		if (retval)
			goto cleanup;
	}

	/*
	 * Update parent inode's counts
	 */
	if (parent != ino) {
		/* reload parent inode due to inline data */
		retval = FUNC19(fs, parent, &parent_inode);
		if (retval)
			goto cleanup;
		parent_inode.i_links_count++;
		retval = FUNC21(fs, parent, &parent_inode);
		if (retval)
			goto cleanup;
	}

	/*
	 * Update accounting....
	 */
	if (!inline_data)
		FUNC2(fs, blk, +1);
	FUNC12(fs, ino, +1, 1);

cleanup:
	if (block)
		FUNC7(&block);
	return retval;

}