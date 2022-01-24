#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct read_bb_record {scalar_t__ err; scalar_t__ bb_list; } ;
struct ext2_inode {int i_blocks; int i_flags; } ;
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ ext2_badblocks_list ;
typedef  scalar_t__ errcode_t ;
typedef  int blk_t ;
struct TYPE_6__ {int blocksize; int /*<<< orphan*/  super; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_FLAG_READ_ONLY ; 
 int /*<<< orphan*/  EXT2_BAD_INO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_EXT2FS_FILSYS ; 
 int EXT4_HUGE_FILE_FL ; 
 scalar_t__ FUNC1 (scalar_t__*,int) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct read_bb_record*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode*) ; 
 int /*<<< orphan*/  mark_bad_block ; 

errcode_t FUNC5(ext2_filsys fs, ext2_badblocks_list *bb_list)
{
	errcode_t	retval;
	struct read_bb_record rb;
	struct ext2_inode inode;
	blk_t	numblocks;

	FUNC0(fs, EXT2_ET_MAGIC_EXT2FS_FILSYS);

	if (!*bb_list) {
		retval = FUNC4(fs, EXT2_BAD_INO, &inode);
		if (retval)
			return retval;
		numblocks = inode.i_blocks;
		if (!(FUNC3(fs->super) &&
		      (inode.i_flags & EXT4_HUGE_FILE_FL)))
			numblocks = numblocks / (fs->blocksize / 512);
		numblocks += 20;
		if (numblocks < 50)
			numblocks = 50;
		if (numblocks > 50000)
			numblocks = 500;
		retval = FUNC1(bb_list, numblocks);
		if (retval)
			return retval;
	}

	rb.bb_list = *bb_list;
	rb.err = 0;
	retval = FUNC2(fs, EXT2_BAD_INO, BLOCK_FLAG_READ_ONLY,
				       0, mark_bad_block, &rb);
	if (retval)
		return retval;

	return rb.err;
}