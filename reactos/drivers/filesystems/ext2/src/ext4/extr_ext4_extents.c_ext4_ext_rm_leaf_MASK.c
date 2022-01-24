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
struct ext4_extent_header {scalar_t__ eh_entries; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; void* ee_len; } ;
struct ext4_ext_path {int /*<<< orphan*/ * p_bh; struct ext4_extent* p_ext; struct ext4_extent_header* p_hdr; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct ext4_extent* FUNC2 (struct ext4_extent_header*) ; 
 struct ext4_extent* FUNC3 (struct ext4_extent_header*) ; 
 unsigned long long EXT_MAX_BLOCKS ; 
 void* FUNC4 (unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int FUNC6 (void*,int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int FUNC7 (void*,int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int FUNC8 (void*,int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 unsigned short FUNC9 (struct ext4_extent*) ; 
 int FUNC10 (void*,int /*<<< orphan*/ *,struct inode*,struct ext4_ext_path*) ; 
 int /*<<< orphan*/  FUNC11 (struct ext4_extent*,int /*<<< orphan*/ ) ; 
 int FUNC12 (void*,int /*<<< orphan*/ *,struct inode*,struct ext4_extent*,unsigned int,unsigned int) ; 
 struct ext4_extent_header* FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (struct inode*) ; 
 unsigned int FUNC15 (scalar_t__) ; 
 unsigned long FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(void *icb, handle_t *handle, struct inode *inode,
		struct ext4_ext_path *path, unsigned long start)
{
	int err = 0, correct_index = 0;
	int depth = FUNC14(inode), credits;
	struct ext4_extent_header *eh;
	unsigned a, b, block, num;
	unsigned long ex_ee_block;
	unsigned short ex_ee_len;
	struct ext4_extent *ex;

	/* the header must be checked already in ext4_ext_remove_space() */
	if (!path[depth].p_hdr)
		path[depth].p_hdr = FUNC13(path[depth].p_bh);
	eh = path[depth].p_hdr;
	FUNC1(eh == NULL);

	/* find where to start removing */
	ex = FUNC3(eh);

	ex_ee_block = FUNC16(ex->ee_block);
	ex_ee_len = FUNC9(ex);

	while (ex >= FUNC2(eh) &&
			ex_ee_block + ex_ee_len > start) {
		path[depth].p_ext = ex;

		a = ex_ee_block > start ? ex_ee_block : start;
		b = (unsigned long long)ex_ee_block + ex_ee_len - 1 < 
			EXT_MAX_BLOCKS ? ex_ee_block + ex_ee_len - 1 : EXT_MAX_BLOCKS;


		if (a != ex_ee_block && b != ex_ee_block + ex_ee_len - 1) {
			block = 0;
			num = 0;
			FUNC0();
		} else if (a != ex_ee_block) {
			/* remove tail of the extent */
			block = ex_ee_block;
			num = a - block;
		} else if (b != ex_ee_block + ex_ee_len - 1) {
			/* remove head of the extent */
			block = a;
			num = b - a;
			/* there is no "make a hole" API yet */
			FUNC0();
		} else {
			/* remove whole extent: excellent! */
			block = ex_ee_block;
			num = 0;
			FUNC1(a != ex_ee_block);
			FUNC1(b != ex_ee_block + ex_ee_len - 1);
		}

		/* at present, extent can't cross block group */
		/* leaf + bitmap + group desc + sb + inode */
		credits = 5;
		if (ex == FUNC2(eh)) {
			correct_index = 1;
			credits += (FUNC14(inode)) + 1;
		}

		/*handle = ext4_ext_journal_restart(icb, handle, credits);*/
		/*if (IS_ERR(icb, handle)) {*/
		/*err = PTR_ERR(icb, handle);*/
		/*goto out;*/
		/*}*/

		err = FUNC8(icb, handle, inode, path + depth);
		if (err)
			goto out;

		err = FUNC12(icb, handle, inode, ex, a, b);
		if (err)
			goto out;

		if (num == 0) {
			/* this extent is removed entirely mark slot unused */
			FUNC11(ex, 0);
			eh->eh_entries = FUNC4(FUNC15(eh->eh_entries)-1);
		}

		ex->ee_block = FUNC5(block);
		ex->ee_len = FUNC4(num);

		err = FUNC7(icb, handle, inode, path + depth);
		if (err)
			goto out;

		ex--;
		ex_ee_block = FUNC16(ex->ee_block);
		ex_ee_len = FUNC9(ex);
	}

	if (correct_index && eh->eh_entries)
		err = FUNC6(icb, handle, inode, path);

	/* if this leaf is free, then we should
	 * remove it from index block above */
	if (err == 0 && eh->eh_entries == 0 && path[depth].p_bh != NULL)
		err = FUNC10(icb, handle, inode, path + depth);

out:
	return err;
}