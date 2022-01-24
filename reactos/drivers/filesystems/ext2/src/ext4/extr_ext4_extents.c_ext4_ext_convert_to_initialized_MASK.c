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
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {struct ext4_extent* p_ext; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ ext4_lblk_t ;

/* Variables and functions */
 int EXT4_EXT_MARK_UNWRIT1 ; 
 int EXT4_EXT_MARK_UNWRIT2 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ext4_extent*) ; 
 int FUNC2 (void*,int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path**,scalar_t__,int,int) ; 
 int FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5 (
		void *icb,
		handle_t *handle,
		struct inode *inode,
		struct ext4_ext_path **ppath,
		ext4_lblk_t split,
		unsigned long blocks,
		int flags)
{
	int depth = FUNC3(inode), err;
	struct ext4_extent *ex = (*ppath)[depth].p_ext;

	FUNC0 (FUNC4(ex->ee_block) <= split);

	if (split + blocks == FUNC4(ex->ee_block) + 
						  FUNC1(ex)) {

		/* split and initialize right part */
		err = FUNC2(icb, handle, inode, ppath, split,
								   EXT4_EXT_MARK_UNWRIT1, flags);

	} else if (FUNC4(ex->ee_block) == split) {

		/* split and initialize left part */
		err = FUNC2(icb, handle, inode, ppath, split + blocks,
								   EXT4_EXT_MARK_UNWRIT2, flags);

	} else {

		/* split 1 extent to 3 and initialize the 2nd */
		err = FUNC2(icb, handle, inode, ppath, split + blocks,
								   EXT4_EXT_MARK_UNWRIT1 |
								   EXT4_EXT_MARK_UNWRIT2, flags);
		if (0 == err) {
			err = FUNC2(icb, handle, inode, ppath, split,
									   EXT4_EXT_MARK_UNWRIT1, flags);
		}
	}

	return err;
}