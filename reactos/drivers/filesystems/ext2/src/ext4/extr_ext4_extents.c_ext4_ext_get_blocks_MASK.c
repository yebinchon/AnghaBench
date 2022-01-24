#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_1__* i_sb; } ;
struct ext4_extent {int /*<<< orphan*/  ee_len; int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; } ;
struct buffer_head {scalar_t__ b_blocknr; int /*<<< orphan*/  b_bdev; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ ext4_lblk_t ;
typedef  scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EXT4_GET_BLOCKS_PRE_IO ; 
 unsigned long EXT_UNWRITTEN_MAX_LEN ; 
 scalar_t__ FUNC1 (struct ext4_ext_path*) ; 
 int FUNC2 (struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (void*,int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path**,scalar_t__,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ext4_ext_path*) ; 
 int FUNC8 (struct inode*,struct ext4_ext_path*,scalar_t__) ; 
 unsigned short FUNC9 (struct ext4_extent*) ; 
 int FUNC10 (void*,int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path**,struct ext4_extent*,int) ; 
 scalar_t__ FUNC11 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC12 (struct ext4_extent*) ; 
 scalar_t__ FUNC13 (struct ext4_ext_path*) ; 
 scalar_t__ FUNC14 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC16 (struct ext4_extent*,scalar_t__) ; 
 struct ext4_ext_path* FUNC17 (struct inode*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (void*,int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (void*,int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC20 (void*,int /*<<< orphan*/ *,struct inode*,int,int /*<<< orphan*/ ,unsigned long*,int*) ; 
 int FUNC21 (struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*) ; 
 int /*<<< orphan*/  FUNC23 (struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC27 (struct buffer_head*) ; 

int FUNC28(void *icb, handle_t *handle, struct inode *inode, ext4_fsblk_t iblock,
		unsigned long max_blocks, struct buffer_head *bh_result,
		int create, int flags)
{
	struct ext4_ext_path *path = NULL;
	struct ext4_extent newex, *ex;
	int goal, err = 0, depth;
	unsigned long allocated = 0;
	ext4_fsblk_t next, newblock;

	FUNC3(bh_result);
	/*mutex_lock(&ext4_I(inode)->truncate_mutex);*/

	/* find extent for this block */
	path = FUNC17(inode, iblock, NULL, 0);
	if (FUNC1(path)) {
		err = FUNC2(path);
		path = NULL;
		goto out2;
	}

	depth = FUNC21(inode);

	/*
	 * consistent leaf must not be empty
	 * this situations is possible, though, _during_ tree modification
	 * this is why assert can't be put in ext4_ext_find_extent()
	 */
	FUNC0(path[depth].p_ext == NULL && depth != 0);

	if ((ex = path[depth].p_ext)) {
		ext4_lblk_t ee_block = FUNC25(ex->ee_block);
		ext4_fsblk_t ee_start = FUNC14(ex);
		unsigned short ee_len  = FUNC9(ex);
		/* if found exent covers block, simple return it */
		if (iblock >= ee_block && iblock < ee_block + ee_len) {

			/* number of remain blocks in the extent */
			allocated = ee_len + ee_block - iblock;

			if (FUNC11(ex)) {
				if (create) {
					newblock = iblock - ee_block + ee_start;
					err = FUNC6 (
							icb, handle,
							inode,
							&path,
							iblock,
							allocated,
							flags);
					if (err)
						goto out2;

				} else {
					newblock = 0;
				}
			} else {
				newblock = iblock - ee_block + ee_start;
			}
			goto out;
		}
	}

	/*
	 * requested block isn't allocated yet
	 * we couldn't try to create block if create flag is zero
	 */
	if (!create) {
		goto out2;
	}

	/* find next allocated block so that we know how many
	 * blocks we can allocate without ovelapping next extent */
	next = FUNC13(path);
	FUNC0(next <= iblock);
	allocated = next - iblock;
	if (flags & EXT4_GET_BLOCKS_PRE_IO && max_blocks > EXT_UNWRITTEN_MAX_LEN)
		max_blocks = EXT_UNWRITTEN_MAX_LEN;
	if (allocated > max_blocks)
		allocated = max_blocks;

	/* allocate new block */
	goal = FUNC8(inode, path, iblock);

	newblock = FUNC20(icb, handle, inode, goal, 0,
			&allocated, &err);
	if (!newblock)
		goto out2;

	/* try to insert new extent into found leaf and return */
	newex.ee_block = FUNC5(iblock);
	FUNC16(&newex, newblock);
	newex.ee_len = FUNC4(allocated);
	/* if it's fallocate, mark ex as unwritten */
	if (flags & EXT4_GET_BLOCKS_PRE_IO) {
		FUNC12(&newex);
	}
	err = FUNC10(icb, handle, inode, &path, &newex,
                                 flags & EXT4_GET_BLOCKS_PRE_IO);

	if (err) {
		/* free data blocks we just allocated */
		FUNC18(icb, handle, inode, NULL, FUNC14(&newex),
				FUNC24(newex.ee_len), FUNC22(inode));
		goto out2;
	}
	
	FUNC19(icb, handle, inode);

	/* previous routine could use block we allocated */
	if (FUNC11(&newex))
		newblock = 0;
	else
		newblock = FUNC14(&newex);

	FUNC27(bh_result);

out:
	if (allocated > max_blocks)
		allocated = max_blocks;

	FUNC15(inode, path);
	FUNC26(bh_result);
	bh_result->b_bdev = inode->i_sb->s_bdev;
	bh_result->b_blocknr = newblock;
out2:
	if (path) {
		FUNC7(path);
		FUNC23(path);
	}
	/*mutex_unlock(&ext4_I(inode)->truncate_mutex);*/

	return err ? err : allocated;
}