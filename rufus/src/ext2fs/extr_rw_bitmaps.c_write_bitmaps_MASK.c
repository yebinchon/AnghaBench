#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int ext2_ino_t ;
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  scalar_t__ dgrp_t ;
typedef  int blk64_t ;
typedef  int __u64 ;
struct TYPE_18__ {scalar_t__ s_first_data_block; } ;
struct TYPE_17__ {int flags; int blocksize; scalar_t__ group_desc_count; int /*<<< orphan*/  io; int /*<<< orphan*/  inode_map; TYPE_7__* super; int /*<<< orphan*/  block_map; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,scalar_t__) ; 
 unsigned int FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  EXT2_BG_BLOCK_UNINIT ; 
 int /*<<< orphan*/  EXT2_BG_INODE_UNINIT ; 
 scalar_t__ FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_7__*) ; 
 scalar_t__ EXT2_ET_BLOCK_BITMAP_WRITE ; 
 scalar_t__ EXT2_ET_INODE_BITMAP_WRITE ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_EXT2FS_FILSYS ; 
 scalar_t__ EXT2_ET_RO_FILSYS ; 
 int EXT2_FLAG_BB_DIRTY ; 
 int EXT2_FLAG_DIRTY ; 
 int EXT2_FLAG_IB_DIRTY ; 
 int EXT2_FLAG_RW ; 
 int FUNC5 (TYPE_7__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*,scalar_t__,char*,int) ; 
 int FUNC8 (TYPE_1__*,scalar_t__) ; 
 int FUNC9 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC10 (char**) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int,int,char*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,scalar_t__) ; 
 int FUNC14 (TYPE_1__*) ; 
 scalar_t__ FUNC15 (TYPE_1__*,scalar_t__,char*,int) ; 
 int FUNC16 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (unsigned int,char*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int,int,char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int,int) ; 

__attribute__((used)) static errcode_t FUNC21(ext2_filsys fs, int do_inode, int do_block)
{
	dgrp_t 		i;
	unsigned int	j;
	int		block_nbytes, inode_nbytes;
	unsigned int	nbits;
	errcode_t	retval;
	char		*block_buf = NULL, *inode_buf = NULL;
	int		csum_flag;
	blk64_t		blk;
	blk64_t		blk_itr = FUNC0(fs, fs->super->s_first_data_block);
	ext2_ino_t	ino_itr = 1;

	FUNC3(fs, EXT2_ET_MAGIC_EXT2FS_FILSYS);

	if (!(fs->flags & EXT2_FLAG_RW))
		return EXT2_ET_RO_FILSYS;

	csum_flag = FUNC14(fs);

	inode_nbytes = block_nbytes = 0;
	if (do_block) {
		block_nbytes = FUNC4(fs->super) / 8;
		retval = FUNC18(fs->io, 0, &block_buf);
		if (retval)
			goto errout;
		FUNC20(block_buf, 0xff, fs->blocksize);
	}
	if (do_inode) {
		inode_nbytes = (size_t)
			((FUNC5(fs->super)+7) / 8);
		retval = FUNC18(fs->io, 0, &inode_buf);
		if (retval)
			goto errout;
		FUNC20(inode_buf, 0xff, fs->blocksize);
	}

	for (i = 0; i < fs->group_desc_count; i++) {
		if (!do_block)
			goto skip_block_bitmap;

		if (csum_flag && FUNC6(fs, i, EXT2_BG_BLOCK_UNINIT)
		    )
			goto skip_this_block_bitmap;

		retval = FUNC11(fs->block_map,
				blk_itr, block_nbytes << 3, block_buf);
		if (retval)
			goto errout;

		if (i == fs->group_desc_count - 1) {
			/* Force bitmap padding for the last group */
			nbits = FUNC1(fs,
				((FUNC9(fs->super)
				  - (__u64) fs->super->s_first_data_block)
				 % (__u64) FUNC2(fs->super)));
			if (nbits)
				for (j = nbits; j < fs->blocksize * 8; j++)
					FUNC17(j, block_buf);
		}

		retval = FUNC7(fs, i, block_buf,
						      block_nbytes);
		if (retval)
			return retval;
		FUNC13(fs, i);
		fs->flags |= EXT2_FLAG_DIRTY;

		blk = FUNC8(fs, i);
		if (blk) {
			retval = FUNC19(fs->io, blk, 1,
							block_buf);
			if (retval) {
				retval = EXT2_ET_BLOCK_BITMAP_WRITE;
				goto errout;
			}
		}
	skip_this_block_bitmap:
		blk_itr += block_nbytes << 3;
	skip_block_bitmap:

		if (!do_inode)
			continue;

		if (csum_flag && FUNC6(fs, i, EXT2_BG_INODE_UNINIT)
		    )
			goto skip_this_inode_bitmap;

		retval = FUNC12(fs->inode_map,
				ino_itr, inode_nbytes << 3, inode_buf);
		if (retval)
			goto errout;

		retval = FUNC15(fs, i, inode_buf,
						      inode_nbytes);
		if (retval)
			goto errout;
		FUNC13(fs, i);
		fs->flags |= EXT2_FLAG_DIRTY;

		blk = FUNC16(fs, i);
		if (blk) {
			retval = FUNC19(fs->io, blk, 1,
						      inode_buf);
			if (retval) {
				retval = EXT2_ET_INODE_BITMAP_WRITE;
				goto errout;
			}
		}
	skip_this_inode_bitmap:
		ino_itr += inode_nbytes << 3;

	}
	if (do_block) {
		fs->flags &= ~EXT2_FLAG_BB_DIRTY;
		FUNC10(&block_buf);
	}
	if (do_inode) {
		fs->flags &= ~EXT2_FLAG_IB_DIRTY;
		FUNC10(&inode_buf);
	}
	return 0;
errout:
	if (inode_buf)
		FUNC10(&inode_buf);
	if (block_buf)
		FUNC10(&block_buf);
	return retval;
}