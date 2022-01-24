#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct ext2_super_block {scalar_t__ s_blocks_per_group; scalar_t__ s_inodes_per_group; } ;
typedef  TYPE_1__* ext2_filsys ;
typedef  int /*<<< orphan*/  errcode_t ;
typedef  scalar_t__ dgrp_t ;
typedef  scalar_t__ __u32 ;
struct TYPE_14__ {scalar_t__ group_desc_count; int /*<<< orphan*/  inode_map; struct ext2_super_block* super; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2_BG_BLOCK_UNINIT ; 
 int /*<<< orphan*/  EXT2_BG_INODE_UNINIT ; 
 int /*<<< orphan*/  EXT2_ET_NO_INODE_BITMAP ; 
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,scalar_t__) ; 

errcode_t FUNC12(ext2_filsys fs)
{
	struct ext2_super_block *sb = fs->super;
	int dirty = 0;
	dgrp_t i;

	if (!fs->inode_map)
		return EXT2_ET_NO_INODE_BITMAP;

	if (!FUNC9(fs))
		return 0;

	for (i = 0; i < fs->group_desc_count; i++) {
		__u32 old_csum = FUNC0(fs, i);
		__u32 old_unused = FUNC6(fs, i);
		__u32 old_flags = FUNC1(fs, i);
		__u32 old_free_inodes_count = FUNC5(fs, i);
		__u32 old_free_blocks_count = FUNC4(fs, i);

		if (old_free_blocks_count == sb->s_blocks_per_group &&
		    i != fs->group_desc_count - 1)
			FUNC3(fs, i, EXT2_BG_BLOCK_UNINIT);

		if (old_free_inodes_count == sb->s_inodes_per_group) {
			FUNC3(fs, i, EXT2_BG_INODE_UNINIT);
			FUNC7(fs, i, sb->s_inodes_per_group);
		} else {
			int unused =
				sb->s_inodes_per_group -
				FUNC11(fs->inode_map,
						      sb->s_inodes_per_group, i);

			FUNC2(fs, i, EXT2_BG_INODE_UNINIT);
			FUNC7(fs, i, unused);
		}

		FUNC8(fs, i);
		if (old_flags != FUNC1(fs, i))
			dirty = 1;
		if (old_unused != FUNC6(fs, i))
			dirty = 1;
		if (old_csum != FUNC0(fs, i))
			dirty = 1;
	}
	if (dirty)
		FUNC10(fs);
	return 0;
}