#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct ext2_inode {int /*<<< orphan*/  i_size; int /*<<< orphan*/  i_flags; } ;
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  int /*<<< orphan*/  blk64_t ;
struct TYPE_11__ {int /*<<< orphan*/  blocksize; int /*<<< orphan*/  super; } ;

/* Variables and functions */
 int /*<<< orphan*/  BMAP_SET ; 
 int /*<<< orphan*/  EXT4_EXTENTS_FL ; 
 int EXT4_INLINE_DATA_DOTDOT_SIZE ; 
 int /*<<< orphan*/  EXT4_INLINE_DATA_FL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,struct ext2_inode*,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,char*,char*,size_t) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode*) ; 

__attribute__((used)) static errcode_t
FUNC11(ext2_filsys fs, ext2_ino_t ino,
			      struct ext2_inode *inode, char *buf, size_t size)
{
	errcode_t retval;
	blk64_t blk;
	char *blk_buf;

	retval = FUNC4(fs->blocksize, &blk_buf);
	if (retval)
		return retval;

#ifdef WORDS_BIGENDIAN
	retval = ext2fs_dirent_swab_in2(fs, buf + EXT4_INLINE_DATA_DOTDOT_SIZE,
					size, 0);
	if (retval)
		goto errout;
#endif

	/* Adjust the rec_len */
	retval = FUNC7(fs, ino, blk_buf, buf, size);
	if (retval)
		goto errout;
	/* Allocate a new block */
	retval = FUNC8(fs, 0, 0, &blk);
	if (retval)
		goto errout;
	retval = FUNC9(fs, blk, blk_buf, 0, ino);
	if (retval)
		goto errout;

	/* Update inode */
	if (FUNC5(fs->super))
		inode->i_flags |= EXT4_EXTENTS_FL;
	inode->i_flags &= ~EXT4_INLINE_DATA_FL;
	retval = FUNC6(fs, inode, 1);
	if (retval)
		goto errout;
	inode->i_size = fs->blocksize;
	retval = FUNC1(fs, ino, inode, 0, BMAP_SET, 0, 0, &blk);
	if (retval)
		goto errout;
	retval = FUNC10(fs, ino, inode);
	if (retval)
		goto errout;
	FUNC0(fs, blk, +1);

errout:
	FUNC3(&blk_buf);
	return retval;
}