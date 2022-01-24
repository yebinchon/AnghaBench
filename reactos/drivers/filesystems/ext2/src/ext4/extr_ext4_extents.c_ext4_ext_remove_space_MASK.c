#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct ext4_ext_path {int p_depth; TYPE_1__* p_hdr; struct buffer_head* p_bh; void* p_block; scalar_t__ p_idx; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_4__ {scalar_t__ eh_entries; int /*<<< orphan*/  eh_max; scalar_t__ eh_depth; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int FUNC4 (void*,int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC5 (struct ext4_ext_path*) ; 
 int FUNC6 (void*,int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 scalar_t__ FUNC7 (struct ext4_ext_path*) ; 
 int FUNC8 (void*,int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int FUNC9 (void*,int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (void*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC13 (struct buffer_head*) ; 
 int FUNC14 (struct inode*) ; 
 TYPE_1__* FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC17 (struct ext4_ext_path*) ; 
 struct ext4_ext_path* FUNC18 (int,int /*<<< orphan*/ ) ; 
 void* FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (struct ext4_ext_path*,int /*<<< orphan*/ ,int) ; 
 struct buffer_head* FUNC21 (struct inode*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC22(void *icb, struct inode *inode, unsigned long start)
{
	struct super_block *sb = inode->i_sb;
	int depth = FUNC14(inode);
	struct ext4_ext_path *path;
	handle_t *handle = NULL;
	int i = 0, err = 0;

	/* probably first extent we're gonna free will be last in block */
	/*handle = ext4_journal_start(inode, depth + 1);*/
	/*if (IS_ERR(icb, handle))*/
	/*return PTR_ERR(icb, handle);*/

	/*
	 * we start scanning from right side freeing all the blocks
	 * after i_size and walking into the deep
	 */
	path = FUNC18(sizeof(struct ext4_ext_path) * (depth + 1), GFP_KERNEL);
	if (path == NULL) {
		FUNC12(icb, handle);
		return -ENOMEM;
	}
	FUNC20(path, 0, sizeof(struct ext4_ext_path) * (depth + 1));
	path[0].p_hdr = FUNC15(inode);
	if (FUNC3(inode)) {
		err = -EIO;
		goto out;
	}
	path[0].p_depth = depth;

	while (i >= 0 && err == 0) {
		if (i == depth) {
			/* this is leaf block */
			err = FUNC9(icb, handle, inode, path, start);
			/* root level have p_bh == NULL, extents_brelse() eats this */
			FUNC16(path[i].p_bh);
			path[i].p_bh = NULL;
			i--;
			continue;
		}

		/* this is index block */
		if (!path[i].p_hdr) {
			path[i].p_hdr = FUNC13(path[i].p_bh);
		}

		if (!path[i].p_idx) {
			/* this level hasn't touched yet */
			path[i].p_idx = FUNC0(path[i].p_hdr);
			path[i].p_block = FUNC19(path[i].p_hdr->eh_entries)+1;
		} else {
			/* we've already was here, see at next index */
			path[i].p_idx--;
		}

		if (FUNC7(path + i)) {
			struct buffer_head *bh;
			/* go to the next level */
			FUNC20(path + i + 1, 0, sizeof(*path));
			bh = FUNC21(inode, FUNC11(path[i].p_idx), path[0].p_depth - (i + 1), 0);
			if (FUNC1(bh)) {
				/* should we reset i_size? */
				err = -EIO;
				break;
			}
			path[i+1].p_bh = bh;

			/* put actual number of indexes to know is this
			 * number got changed at the next iteration */
			path[i].p_block = FUNC19(path[i].p_hdr->eh_entries);
			i++;
		} else {
			/* we finish processing this index, go up */
			if (path[i].p_hdr->eh_entries == 0 && i > 0) {
				/* index is empty, remove it
				 * handle must be already prepared by the
				 * truncatei_leaf() */
				err = FUNC8(icb, handle, inode, path + i);
			}
			/* root level have p_bh == NULL, extents_brelse() eats this */
			FUNC16(path[i].p_bh);
			path[i].p_bh = NULL;
			i--;
		}
	}

	/* TODO: flexible tree reduction should be here */
	if (path->p_hdr->eh_entries == 0) {
		/*
		 * truncate to zero freed all the tree
		 * so, we need to correct eh_depth
		 */
		err = FUNC6(icb, handle, inode, path);
		if (err == 0) {
			FUNC15(inode)->eh_depth = 0;
			FUNC15(inode)->eh_max =
				FUNC2(FUNC10(inode, 0));
			err = FUNC4(icb, handle, inode, path);
		}
	}
out:
	if (path) {
		FUNC5(path);
		FUNC17(path);
	}
	FUNC12(icb, handle);

	return err;
}