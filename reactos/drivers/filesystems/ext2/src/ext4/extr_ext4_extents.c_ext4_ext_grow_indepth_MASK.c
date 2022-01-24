#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_extent_header {scalar_t__ eh_depth; void* eh_max; void* eh_entries; void* eh_magic; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ ext4_fsblk_t ;
struct TYPE_8__ {int /*<<< orphan*/  i_block; } ;
struct TYPE_7__ {int /*<<< orphan*/  ee_block; } ;
struct TYPE_6__ {int /*<<< orphan*/  ei_block; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EXT4_EXT_MAGIC ; 
 TYPE_5__* FUNC0 (struct inode*) ; 
 TYPE_4__* FUNC1 (struct ext4_extent_header*) ; 
 TYPE_1__* FUNC2 (struct ext4_extent_header*) ; 
 void* FUNC3 (int) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct ext4_extent_header*) ; 
 int FUNC8 (void*,int /*<<< orphan*/ *,struct inode*,struct buffer_head*) ; 
 scalar_t__ FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC11 (struct inode*) ; 
 int FUNC12 (void*,int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC13 (void*,int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC14 (void*,int /*<<< orphan*/ *,struct inode*,scalar_t__,unsigned int,int /*<<< orphan*/ *,int*) ; 
 struct ext4_extent_header* FUNC15 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (char*,void*,void*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC17 (struct inode*) ; 
 struct ext4_extent_header* FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct buffer_head*) ; 
 struct buffer_head* FUNC20 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC24(void *icb, handle_t *handle, struct inode *inode,
		unsigned int flags)
{
	struct ext4_extent_header *neh;
	struct buffer_head *bh;
	ext4_fsblk_t newblock, goal = 0;
	int err = 0;

	/* Try to prepend new index to old one */
	if (FUNC17(inode))
		goal = FUNC9(FUNC2(FUNC18(inode)));
	goal = FUNC11(inode);
	newblock = FUNC14(icb, handle, inode, goal, flags,
			NULL, &err);
	if (newblock == 0)
		return err;

	bh = FUNC20(inode->i_sb, newblock);
	if (!bh)
		return -ENOMEM;

	err = FUNC12(icb, handle, bh);
	if (err)
		goto out;

	/* move top-level index/leaf into new block */
	FUNC22(bh->b_data, FUNC0(inode)->i_block,
			sizeof(FUNC0(inode)->i_block));

	/* set size of new block */
	neh = FUNC15(bh);
	/* old root could have indexes or leaves
	 * so calculate e_max right way */
	if (FUNC17(inode))
		neh->eh_max = FUNC3(FUNC5(inode, 0));
	else
		neh->eh_max = FUNC3(FUNC4(inode, 0));
	neh->eh_magic = FUNC3(EXT4_EXT_MAGIC);
	FUNC7(inode, neh);
	FUNC23(bh);

	err = FUNC8(icb, handle, inode, bh);
	if (err)
		goto out;

	/* Update top-level index: num,max,pointer */
	neh = FUNC18(inode);
	neh->eh_entries = FUNC3(1);
	FUNC10(FUNC2(neh), newblock);
	if (neh->eh_depth == 0) {
		/* Root extent block becomes index block */
		neh->eh_max = FUNC3(FUNC6(inode, 0));
		FUNC2(neh)->ei_block =
			FUNC1(neh)->ee_block;
	}
	FUNC16("new root: num %d(%d), lblock %d, ptr %llu\n",
			(neh->eh_entries), (neh->eh_max),
			(FUNC2(neh)->ei_block),
			FUNC9(FUNC2(neh)));

	FUNC21(&neh->eh_depth, 1);
	FUNC13(icb, handle, inode);
out:
	FUNC19(bh);

	return err;
}