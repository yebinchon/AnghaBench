#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_9__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct ext2_inode {scalar_t__ i_blocks; int i_links_count; int i_mode; int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_size_high; int /*<<< orphan*/  i_block; scalar_t__ i_ctime; scalar_t__ i_mtime; int /*<<< orphan*/  i_flags; } ;
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  unsigned long long blk_t ;
typedef  unsigned long long blk64_t ;
struct TYPE_14__ {int /*<<< orphan*/  s_jnl_backup_type; int /*<<< orphan*/ * s_jnl_blocks; } ;
struct TYPE_13__ {TYPE_9__* super; int /*<<< orphan*/  io; scalar_t__ now; scalar_t__ blocksize; } ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int EXT2_FALLOCATE_FORCE_INIT ; 
 int EXT2_FALLOCATE_ZERO_BLOCKS ; 
 int EXT2_MKJOURNAL_LAZYINIT ; 
 int EXT2_N_BLOCKS ; 
 int /*<<< orphan*/  EXT3_JNL_BACKUP_BLOCKS ; 
 int /*<<< orphan*/  EXT4_EXTENTS_FL ; 
 int LINUX_S_IFREG ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long long*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,unsigned long long,int,char**) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int,int /*<<< orphan*/ ,struct ext2_inode*,unsigned long long,int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 scalar_t__ FUNC4 (TYPE_9__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,struct ext2_inode*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode*) ; 
 unsigned long long FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,unsigned long long,int,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static errcode_t FUNC14(ext2_filsys fs, ext2_ino_t journal_ino,
				     blk_t num_blocks, blk64_t goal, int flags)
{
	char			*buf;
	errcode_t		retval;
	struct ext2_inode	inode;
	unsigned long long	inode_size;
	int			falloc_flags = EXT2_FALLOCATE_FORCE_INIT;
	blk64_t			zblk;

	if ((retval = FUNC1(fs, num_blocks, flags,
						       &buf)))
		return retval;

	if ((retval = FUNC7(fs)))
		goto out2;

	if ((retval = FUNC8(fs, journal_ino, &inode)))
		goto out2;

	if (inode.i_blocks > 0) {
		retval = EEXIST;
		goto out2;
	}

	if (goal == ~0ULL)
		goal = FUNC10(fs);

	if (FUNC4(fs->super))
		inode.i_flags |= EXT4_EXTENTS_FL;

	if (!(flags & EXT2_MKJOURNAL_LAZYINIT))
		falloc_flags |= EXT2_FALLOCATE_ZERO_BLOCKS;

	inode_size = (unsigned long long)fs->blocksize * num_blocks;
	inode.i_mtime = inode.i_ctime = fs->now ? fs->now : FUNC13(0);
	inode.i_links_count = 1;
	inode.i_mode = LINUX_S_IFREG | 0600;
	retval = FUNC5(fs, &inode, inode_size);
	if (retval)
		goto out2;

	retval = FUNC2(fs, falloc_flags, journal_ino,
				  &inode, goal, 0, num_blocks);
	if (retval)
		goto out2;

	if ((retval = FUNC9(fs, journal_ino, &inode)))
		goto out2;

	retval = FUNC0(fs, journal_ino, &inode, NULL, 0, 0, NULL, &zblk);
	if (retval)
		goto out2;

	retval = FUNC11(fs->io, zblk, 1, buf);
	if (retval)
		goto out2;

	FUNC12(fs->super->s_jnl_blocks, inode.i_block, EXT2_N_BLOCKS*4);
	fs->super->s_jnl_blocks[15] = inode.i_size_high;
	fs->super->s_jnl_blocks[16] = inode.i_size;
	fs->super->s_jnl_backup_type = EXT3_JNL_BACKUP_BLOCKS;
	FUNC6(fs);

out2:
	FUNC3(&buf);
	return retval;
}