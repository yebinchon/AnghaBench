#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ext2fs_block_bitmap ;
typedef  TYPE_1__* ext2_filsys ;
typedef  int /*<<< orphan*/  errcode_t ;
typedef  scalar_t__ dgrp_t ;
typedef  scalar_t__ blk64_t ;
struct TYPE_8__ {scalar_t__ group_desc_count; int /*<<< orphan*/  inode_blocks_per_group; int /*<<< orphan*/  block_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2_BG_BLOCK_UNINIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static errcode_t FUNC7(ext2_filsys fs)
{
	dgrp_t			i;
	blk64_t			blk;
	ext2fs_block_bitmap	bmap = fs->block_map;

	for (i = 0; i < fs->group_desc_count; i++) {
		if (!FUNC0(fs, i, EXT2_BG_BLOCK_UNINIT))
			continue;

		FUNC6(fs, i, bmap);

		/*
		 * Mark the blocks used for the inode table
		 */
		blk = FUNC3(fs, i);
		if (blk)
			FUNC5(bmap, blk,
						fs->inode_blocks_per_group);

		/*
		 * Mark block used for the block bitmap
		 */
		blk = FUNC1(fs, i);
		if (blk)
			FUNC4(bmap, blk);

		/*
		 * Mark block used for the inode bitmap
		 */
		blk = FUNC2(fs, i);
		if (blk)
			FUNC4(bmap, blk);
	}
	return 0;
}