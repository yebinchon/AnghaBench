#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct inode {int dummy; } ;
struct ext4_extent {void* ee_len; int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {int p_depth; struct ext4_extent* p_ext; } ;
typedef  int /*<<< orphan*/  orig_ex ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ ext4_lblk_t ;
typedef  scalar_t__ ext4_fsblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int EXT4_EXT_DATA_VALID1 ; 
 int EXT4_EXT_DATA_VALID2 ; 
 int EXT4_EXT_MARK_UNWRIT1 ; 
 int EXT4_EXT_MARK_UNWRIT2 ; 
 int EXT4_EXT_MAY_ZEROOUT ; 
 int EXT4_GET_BLOCKS_PRE_IO ; 
 void* FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (void*,int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int FUNC4 (void*,int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 unsigned int FUNC5 (struct ext4_extent*) ; 
 int FUNC6 (void*,int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path**,struct ext4_extent*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC8 (struct ext4_extent*) ; 
 scalar_t__ FUNC9 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC11 (struct ext4_extent*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*,struct ext4_extent*) ; 
 int FUNC13 (struct inode*,struct ext4_extent*) ; 
 unsigned int FUNC14 (struct inode*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ext4_extent*,struct ext4_extent*,int) ; 

__attribute__((used)) static int FUNC17(void *icb, handle_t *handle,
		struct inode *inode,
		struct ext4_ext_path **ppath,
		ext4_lblk_t split,
		int split_flag,
		int flags)
{
	struct ext4_ext_path *path = *ppath;
	ext4_fsblk_t newblock;
	ext4_lblk_t ee_block;
	struct ext4_extent *ex, newex, orig_ex, zero_ex;
	struct ext4_extent *ex2 = NULL;
	unsigned int ee_len, depth;
	int err = 0;

	FUNC10(inode, path);

	depth = FUNC14(inode);
	ex = path[depth].p_ext;
	ee_block = FUNC15(ex->ee_block);
	ee_len = FUNC5(ex);
	newblock = split - ee_block + FUNC9(ex);

	FUNC0(split < ee_block || split >= (ee_block + ee_len));

	err = FUNC4(icb, handle, inode, path + depth);
	if (err)
		goto out;

	if (split == ee_block) {
		/*
		 * case b: block @split is the block that the extent begins with
		 * then we just change the state of the extent, and splitting
		 * is not needed.
		 */
		if (split_flag & EXT4_EXT_MARK_UNWRIT2)
			FUNC8(ex);
		else
			FUNC7(ex);

		if (!(flags & EXT4_GET_BLOCKS_PRE_IO))
			FUNC12(icb, handle, inode, path, ex);

		err = FUNC3(icb, handle, inode, path + path->p_depth);
		goto out;
	}

	/* case a */
	FUNC16(&orig_ex, ex, sizeof(orig_ex));
	ex->ee_len = FUNC1(split - ee_block);
	if (split_flag & EXT4_EXT_MARK_UNWRIT1)
		FUNC8(ex);

	/*
	 * path may lead to new leaf, not to original leaf any more
	 * after ext4_ext_insert_extent() returns,
	 */
	err = FUNC3(icb, handle, inode, path + depth);
	if (err)
		goto fix_extent_len;

	ex2 = &newex;
	ex2->ee_block = FUNC2(split);
	ex2->ee_len   = FUNC1(ee_len - (split - ee_block));
	FUNC11(ex2, newblock);
	if (split_flag & EXT4_EXT_MARK_UNWRIT2)
		FUNC8(ex2);

	err = FUNC6(icb, handle, inode, ppath, &newex, flags);
	if (err == -ENOSPC && (EXT4_EXT_MAY_ZEROOUT & split_flag)) {
		if (split_flag & (EXT4_EXT_DATA_VALID1|EXT4_EXT_DATA_VALID2)) {
			if (split_flag & EXT4_EXT_DATA_VALID1) {
				err = FUNC13(inode, ex2);
				zero_ex.ee_block = ex2->ee_block;
				zero_ex.ee_len = FUNC1(
						FUNC5(ex2));
				FUNC11(&zero_ex,
						FUNC9(ex2));
			} else {
				err = FUNC13(inode, ex);
				zero_ex.ee_block = ex->ee_block;
				zero_ex.ee_len = FUNC1(
						FUNC5(ex));
				FUNC11(&zero_ex,
						FUNC9(ex));
			}
		} else {
			err = FUNC13(inode, &orig_ex);
			zero_ex.ee_block = orig_ex.ee_block;
			zero_ex.ee_len = FUNC1(
					FUNC5(&orig_ex));
			FUNC11(&zero_ex,
					FUNC9(&orig_ex));
		}

		if (err)
			goto fix_extent_len;
		/* update the extent length and mark as initialized */
		ex->ee_len = FUNC1(ee_len);
		FUNC12(icb, handle, inode, path, ex);
		err = FUNC3(icb, handle, inode, path + path->p_depth);
		if (err)
			goto fix_extent_len;

		goto out;
	} else if (err)
		goto fix_extent_len;

out:
	FUNC10(inode, path);
	return err;

fix_extent_len:
	ex->ee_len = orig_ex.ee_len;
	FUNC3(icb, handle, inode, path + path->p_depth);
	return err;
}