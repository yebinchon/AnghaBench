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
struct inode {int dummy; } ;
struct ext4_extent_idx {int dummy; } ;
struct ext4_extent_header {int dummy; } ;
struct ext4_ext_path {int p_depth; int /*<<< orphan*/  p_bh; TYPE_1__* p_hdr; scalar_t__ p_ext; int /*<<< orphan*/  p_maxdepth; int /*<<< orphan*/  p_idx; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;
struct TYPE_4__ {int /*<<< orphan*/  eh_max; int /*<<< orphan*/  eh_entries; } ;

/* Variables and functions */
 int EXT4_FREE_BLOCKS_FORGET ; 
 int EXT4_FREE_BLOCKS_METADATA ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ *,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*,size_t) ; 

__attribute__((used)) static void FUNC9(void *icb, handle_t *handle,
		struct inode *inode,
		struct ext4_ext_path *path)
{
	size_t s;
	unsigned max_root = FUNC2(inode, 0);
	ext4_fsblk_t blk;

	if ((path[0].p_depth != 1) ||
			(FUNC7(path[0].p_hdr->eh_entries) != 1) ||
			(FUNC7(path[1].p_hdr->eh_entries) > max_root))
		return;

	/*
	 * We need to modify the block allocation bitmap and the block
	 * group descriptor to release the extent tree block.  If we
	 * can't get the journal credits, give up.
	 */
	if (FUNC5(icb, handle, 2))
		return;

	/*
	 * Copy the extent data up to the inode
	 */
	blk = FUNC4(path[0].p_idx);
	s = FUNC7(path[1].p_hdr->eh_entries) *
		sizeof(struct ext4_extent_idx);
	s += sizeof(struct ext4_extent_header);

	path[1].p_maxdepth = path[0].p_maxdepth;
	FUNC8(path[0].p_hdr, path[1].p_hdr, s);
	path[0].p_depth = 0;
	path[0].p_ext = FUNC0(path[0].p_hdr) +
		(path[1].p_ext - FUNC0(path[1].p_hdr));
	path[0].p_hdr->eh_max = FUNC1(max_root);

	FUNC6(path[1].p_bh);
	FUNC3(icb, handle, inode, NULL, blk, 1,
			EXT4_FREE_BLOCKS_METADATA | EXT4_FREE_BLOCKS_FORGET);
}