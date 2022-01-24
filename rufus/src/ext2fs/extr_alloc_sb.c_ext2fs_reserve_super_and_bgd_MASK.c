#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ext2fs_block_bitmap ;
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ dgrp_t ;
typedef  scalar_t__ blk_t ;
typedef  scalar_t__ blk64_t ;
struct TYPE_9__ {int s_first_meta_bg; int s_reserved_gdt_blocks; } ;
struct TYPE_8__ {int desc_blocks; int blocksize; scalar_t__ inode_blocks_per_group; TYPE_4__* super; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int FUNC2 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 

int FUNC7(ext2_filsys fs,
				 dgrp_t group,
				 ext2fs_block_bitmap bmap)
{
	blk64_t	super_blk, old_desc_blk, new_desc_blk;
	blk_t	used_blks;
	int	old_desc_blocks, num_blocks;

	FUNC6(fs, group, &super_blk,
				  &old_desc_blk, &new_desc_blk, &used_blks);

	if (FUNC3(fs->super))
		old_desc_blocks = fs->super->s_first_meta_bg;
	else
		old_desc_blocks =
			fs->desc_blocks + fs->super->s_reserved_gdt_blocks;

	if (super_blk || (group == 0))
		FUNC4(bmap, super_blk);
	if ((group == 0) && (fs->blocksize == 1024) &&
	    FUNC0(fs) > 1)
		FUNC4(bmap, 0);

	if (old_desc_blk) {
		num_blocks = old_desc_blocks;
		if (old_desc_blk + num_blocks >= FUNC1(fs->super))
			num_blocks = FUNC1(fs->super) -
				old_desc_blk;
		FUNC5(bmap, old_desc_blk, num_blocks);
	}
	if (new_desc_blk)
		FUNC4(bmap, new_desc_blk);

	num_blocks = FUNC2(fs, group);
	num_blocks -= 2 + fs->inode_blocks_per_group + used_blks;

	return num_blocks  ;
}