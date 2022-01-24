#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_9__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct ext2_inode_large {int dummy; } ;
struct ext2_inode {int dummy; } ;
struct ext2_ext_attr_header {scalar_t__ h_magic; int h_refcount; } ;
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  scalar_t__ blk64_t ;
struct TYPE_12__ {scalar_t__ s_first_data_block; } ;
struct TYPE_11__ {int /*<<< orphan*/  blocksize; TYPE_9__* super; } ;

/* Variables and functions */
 scalar_t__ EXT2_ET_BAD_EA_BLOCK_NUM ; 
 scalar_t__ EXT2_ET_BAD_EA_HEADER ; 
 scalar_t__ EXT2_EXT_ATTR_MAGIC ; 
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC1 (TYPE_9__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,struct ext2_inode*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct ext2_inode*,scalar_t__) ; 
 scalar_t__ FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,void**) ; 
 scalar_t__ FUNC7 (TYPE_1__*,struct ext2_inode*,int) ; 
 scalar_t__ FUNC8 (TYPE_1__*,scalar_t__,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (TYPE_1__*,scalar_t__,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static errcode_t FUNC10(ext2_filsys fs, ext2_ino_t ino,
					 struct ext2_inode_large *inode)
{
	struct ext2_ext_attr_header *header;
	void *block_buf = NULL;
	blk64_t blk, goal;
	errcode_t err;

	/* Do we already have an EA block? */
	blk = FUNC2(fs, (struct ext2_inode *)inode);
	if (blk != 0) {
		if ((blk < fs->super->s_first_data_block) ||
		    (blk >= FUNC1(fs->super))) {
			err = EXT2_ET_BAD_EA_BLOCK_NUM;
			goto out;
		}

		err = FUNC6(fs->blocksize, &block_buf);
		if (err)
			goto out;

		err = FUNC8(fs, blk, block_buf, ino);
		if (err)
			goto out2;

		/* We only know how to deal with v2 EA blocks */
		header = (struct ext2_ext_attr_header *) block_buf;
		if (header->h_magic != EXT2_EXT_ATTR_MAGIC) {
			err = EXT2_ET_BAD_EA_HEADER;
			goto out2;
		}

		/* Single-user block.  We're done here. */
		if (header->h_refcount == 1)
			goto out2;

		/* We need to CoW the block. */
		header->h_refcount--;
		err = FUNC9(fs, blk, block_buf, ino);
		if (err)
			goto out2;
	} else {
		/* No block, we must increment i_blocks */
		err = FUNC7(fs, (struct ext2_inode *)inode,
					     1);
		if (err)
			goto out;
	}

	/* Allocate a block */
	goal = FUNC4(fs, ino, (struct ext2_inode *)inode, 0);
	err = FUNC0(fs, goal, NULL, &blk);
	if (err)
		goto out2;
	FUNC3(fs, (struct ext2_inode *)inode, blk);
out2:
	if (block_buf)
		FUNC5(&block_buf);
out:
	return err;
}