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
typedef  int /*<<< orphan*/  ext2fs_inode_bitmap ;
typedef  scalar_t__ ext2_ino_t ;
typedef  TYPE_2__* ext2_filsys ;
typedef  scalar_t__ dgrp_t ;
struct TYPE_11__ {scalar_t__ group_desc_count; TYPE_1__* super; } ;
struct TYPE_10__ {scalar_t__ s_inodes_per_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2_BG_BLOCK_UNINIT ; 
 int /*<<< orphan*/  EXT2_BG_INODE_UNINIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC7(ext2_filsys fs, ext2fs_inode_bitmap map,
			  dgrp_t group)
{
	ext2_ino_t	i, ino;

	if (group >= fs->group_desc_count ||
	    !FUNC4(fs) ||
	    !(FUNC1(fs, group, EXT2_BG_INODE_UNINIT)))
		return;

	ino = (group * fs->super->s_inodes_per_group) + 1;
	for (i=0; i < fs->super->s_inodes_per_group; i++, ino++)
		FUNC2(map, ino);

	FUNC0(fs, group, EXT2_BG_INODE_UNINIT);
	/* Mimics what the kernel does */
	FUNC0(fs, group, EXT2_BG_BLOCK_UNINIT);
	FUNC3(fs, group);
	FUNC5(fs);
	FUNC6(fs);
}