#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ext2_inode_large {int i_flags; scalar_t__ i_links_count; scalar_t__* i_block; int /*<<< orphan*/  i_mode; } ;
typedef  TYPE_1__* ext2_filsys ;
struct TYPE_5__ {scalar_t__ s_first_data_block; } ;
struct TYPE_4__ {TYPE_2__* super; } ;

/* Variables and functions */
 int FUNC0 (struct ext2_inode_large*) ; 
 unsigned int EXT2_N_BLOCKS ; 
 int EXT4_EXTENTS_FL ; 
 int EXT4_INLINE_DATA_FL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC5(ext2_filsys fs,
				  struct ext2_inode_large *inode)
{
	unsigned int i, bad;

	/* We're only interested in block mapped files, dirs, and symlinks */
	if ((inode->i_flags & EXT4_INLINE_DATA_FL) ||
	    (inode->i_flags & EXT4_EXTENTS_FL))
		return 0;
	if (!FUNC3(inode->i_mode) &&
	    !FUNC2(inode->i_mode) &&
	    !FUNC1(inode->i_mode))
		return 0;
	if (FUNC2(inode->i_mode) &&
	    FUNC0(inode) <= sizeof(inode->i_block))
		return 0;

	/* Unused inodes probably aren't insane */
	if (inode->i_links_count == 0)
		return 0;

	/* See if more than half the block maps are insane */
	for (i = 0, bad = 0; i < EXT2_N_BLOCKS; i++)
		if (inode->i_block[i] != 0 &&
		    (inode->i_block[i] < fs->super->s_first_data_block ||
		     inode->i_block[i] >= FUNC4(fs->super)))
			bad++;
	return bad > EXT2_N_BLOCKS / 2;
}