#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ext2fs_extent {scalar_t__ e_lblk; scalar_t__ e_pblk; } ;
struct ext2_inode {int i_flags; scalar_t__* i_block; } ;
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  TYPE_2__* ext2_filsys ;
typedef  int /*<<< orphan*/ * ext2_extent_handle_t ;
typedef  int /*<<< orphan*/  errcode_t ;
typedef  int dgrp_t ;
typedef  scalar_t__ blk64_t ;
typedef  int __u8 ;
struct TYPE_8__ {TYPE_1__* super; } ;
struct TYPE_7__ {int s_log_groups_per_flex; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2_EXTENT_CURRENT ; 
 int EXT4_EXTENTS_FL ; 
 int EXT4_INLINE_DATA_FL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct ext2fs_extent*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,struct ext2_inode*,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct ext2_inode*) ; 

blk64_t FUNC7(ext2_filsys fs, ext2_ino_t ino,
			       struct ext2_inode *inode, blk64_t lblk)
{
	dgrp_t			group;
	__u8			log_flex;
	struct ext2fs_extent	extent;
	ext2_extent_handle_t	handle = NULL;
	errcode_t		err;

	/* Make sure data stored in inode->i_block is neither fast symlink nor
	 * inline data.
	 */
	if (inode == NULL || FUNC6(inode) ||
	    inode->i_flags & EXT4_INLINE_DATA_FL)
		goto no_blocks;

	if (inode->i_flags & EXT4_EXTENTS_FL) {
		err = FUNC3(fs, ino, inode, &handle);
		if (err)
			goto no_blocks;
		err = FUNC2(handle, 0, lblk);
		if (err)
			goto no_blocks;
		err = FUNC1(handle, EXT2_EXTENT_CURRENT, &extent);
		if (err)
			goto no_blocks;
		FUNC0(handle);
		return extent.e_pblk + (lblk - extent.e_lblk);
	}

	/* block mapped file; see if block zero is mapped? */
	if (inode->i_block[0])
		return inode->i_block[0];

no_blocks:
	FUNC0(handle);
	log_flex = fs->super->s_log_groups_per_flex;
	group = FUNC5(fs, ino);
	if (log_flex)
		group = group & ~((1 << (log_flex)) - 1);
	return FUNC4(fs, group);
}