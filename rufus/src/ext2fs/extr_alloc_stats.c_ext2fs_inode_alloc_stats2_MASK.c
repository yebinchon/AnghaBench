#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ext2_ino_t ;
typedef  TYPE_2__* ext2_filsys ;
struct TYPE_17__ {TYPE_1__* super; int /*<<< orphan*/  inode_map; } ;
struct TYPE_16__ {scalar_t__ s_inodes_count; int s_inodes_per_group; int s_free_inodes_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2_BG_INODE_UNINIT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,scalar_t__) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int) ; 
 int FUNC9 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC15(ext2_filsys fs, ext2_ino_t ino,
			       int inuse, int isdir)
{
	int	group = FUNC9(fs, ino);

	if (ino > fs->super->s_inodes_count) {
#ifndef OMIT_COM_ERR
		FUNC0("ext2fs_inode_alloc_stats2", 0,
			"Illegal inode number: %lu", (unsigned long) ino);
#endif
		return;
	}
	if (inuse > 0)
		FUNC12(fs->inode_map, ino);
	else
		FUNC14(fs->inode_map, ino);
	FUNC3(fs, group, FUNC2(fs, group) - inuse);
	if (isdir)
		FUNC7(fs, group, FUNC6(fs, group) + inuse);

	/* We don't strictly need to be clearing the uninit flag if inuse < 0
	 * (i.e. freeing inodes) but it also means something is bad. */
	FUNC1(fs, group, EXT2_BG_INODE_UNINIT);
	if (FUNC10(fs)) {
		ext2_ino_t first_unused_inode =	fs->super->s_inodes_per_group -
			FUNC4(fs, group) +
			group * fs->super->s_inodes_per_group + 1;

		if (ino >= first_unused_inode)
			FUNC5(fs, group, group * fs->super->s_inodes_per_group + fs->super->s_inodes_per_group - ino);
		FUNC8(fs, group);
	}

	fs->super->s_free_inodes_count -= inuse;
	FUNC13(fs);
	FUNC11(fs);
}