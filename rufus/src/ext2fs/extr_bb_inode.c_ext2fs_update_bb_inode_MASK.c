#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct set_badblock_record {int max_ind_blocks; int bad_block_count; struct set_badblock_record* block_buf; struct set_badblock_record* ind_blocks; scalar_t__ err; int /*<<< orphan*/  bb_iter; } ;
struct ext2_inode {void* i_ctime; void* i_mtime; void* i_atime; } ;
typedef  int /*<<< orphan*/  rec ;
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ ext2_badblocks_list ;
typedef  scalar_t__ errcode_t ;
typedef  int /*<<< orphan*/  blk_t ;
struct TYPE_9__ {int blocksize; void* now; int /*<<< orphan*/  block_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_FLAG_APPEND ; 
 int /*<<< orphan*/  BLOCK_FLAG_DEPTH_TRAVERSE ; 
 int /*<<< orphan*/  EXT2_BAD_INO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_EXT2FS_FILSYS ; 
 scalar_t__ EXT2_ET_NO_BLOCK_BITMAP ; 
 int /*<<< orphan*/  clear_bad_block_proc ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct set_badblock_record*) ; 
 int /*<<< orphan*/  FUNC4 (struct set_badblock_record**) ; 
 scalar_t__ FUNC5 (int,int,struct set_badblock_record**) ; 
 scalar_t__ FUNC6 (int,struct set_badblock_record**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct ext2_inode*,int) ; 
 scalar_t__ FUNC8 (TYPE_1__*,struct ext2_inode*,int) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct set_badblock_record*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  set_bad_block_proc ; 
 void* FUNC12 (int /*<<< orphan*/ ) ; 

errcode_t FUNC13(ext2_filsys fs, ext2_badblocks_list bb_list)
{
	errcode_t			retval;
	struct set_badblock_record 	rec;
	struct ext2_inode		inode;

	FUNC0(fs, EXT2_ET_MAGIC_EXT2FS_FILSYS);

	if (!fs->block_map)
		return EXT2_ET_NO_BLOCK_BITMAP;

	FUNC11(&rec, 0, sizeof(rec));
	rec.max_ind_blocks = 10;
	retval = FUNC5(rec.max_ind_blocks, sizeof(blk_t),
				&rec.ind_blocks);
	if (retval)
		return retval;
	FUNC11(rec.ind_blocks, 0, rec.max_ind_blocks * sizeof(blk_t));
	retval = FUNC6(fs->blocksize, &rec.block_buf);
	if (retval)
		goto cleanup;
	FUNC11(rec.block_buf, 0, fs->blocksize);
	rec.err = 0;

	/*
	 * First clear the old bad blocks (while saving the indirect blocks)
	 */
	retval = FUNC3(fs, EXT2_BAD_INO,
				       BLOCK_FLAG_DEPTH_TRAVERSE, 0,
				       clear_bad_block_proc, &rec);
	if (retval)
		goto cleanup;
	if (rec.err) {
		retval = rec.err;
		goto cleanup;
	}

	/*
	 * Now set the bad blocks!
	 *
	 * First, mark the bad blocks as used.  This prevents a bad
	 * block from being used as an indirect block for the bad
	 * block inode (!).
	 */
	if (bb_list) {
		retval = FUNC1(bb_list,
							     &rec.bb_iter);
		if (retval)
			goto cleanup;
		retval = FUNC3(fs, EXT2_BAD_INO,
					       BLOCK_FLAG_APPEND, 0,
					       set_bad_block_proc, &rec);
		FUNC2(rec.bb_iter);
		if (retval)
			goto cleanup;
		if (rec.err) {
			retval = rec.err;
			goto cleanup;
		}
	}

	/*
	 * Update the bad block inode's mod time and block count
	 * field.
	 */
	retval = FUNC9(fs, EXT2_BAD_INO, &inode);
	if (retval)
		goto cleanup;

	inode.i_atime = inode.i_mtime = fs->now ? fs->now : FUNC12(0);
	if (!inode.i_ctime)
		inode.i_ctime = fs->now ? fs->now : FUNC12(0);
	FUNC7(fs, &inode, rec.bad_block_count);
	retval = FUNC8(fs, &inode,
				       rec.bad_block_count * fs->blocksize);
	if (retval)
		goto cleanup;

	retval = FUNC10(fs, EXT2_BAD_INO, &inode);
	if (retval)
		goto cleanup;

cleanup:
	FUNC4(&rec.ind_blocks);
	FUNC4(&rec.block_buf);
	return retval;
}