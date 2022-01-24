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
struct ext4_extent_header {int /*<<< orphan*/  eh_entries; } ;
struct ext4_extent {int /*<<< orphan*/  ee_len; } ;
struct ext4_ext_path {struct ext4_extent_header* p_hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*,char*) ; 
 struct ext4_extent* FUNC1 (struct ext4_extent_header*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct ext4_extent*,struct ext4_extent*) ; 
 scalar_t__ FUNC5 (struct ext4_extent*) ; 
 int FUNC6 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC7 (struct ext4_extent*) ; 
 unsigned int FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ext4_extent*,struct ext4_extent*,unsigned int) ; 

__attribute__((used)) static int FUNC11(struct inode *inode,
		struct ext4_ext_path *path,
		struct ext4_extent *ex)
{
	struct ext4_extent_header *eh;
	unsigned int depth, len;
	int merge_done = 0, unwritten;

	depth = FUNC8(inode);
	FUNC2(path[depth].p_hdr != NULL);
	eh = path[depth].p_hdr;

	while (ex < FUNC1(eh)) {
		if (!FUNC4(inode, ex, ex + 1))
			break;
		/* merge with next extent! */
		unwritten = FUNC6(ex);
		ex->ee_len = FUNC3(FUNC5(ex)
				+ FUNC5(ex + 1));
		if (unwritten)
			FUNC7(ex);

		if (ex + 1 < FUNC1(eh)) {
			len = (FUNC1(eh) - ex - 1)
				* sizeof(struct ext4_extent);
			FUNC10(ex + 1, ex + 2, len);
		}
		FUNC9(&eh->eh_entries, -1);
		merge_done = 1;
		if (!eh->eh_entries)
			FUNC0(inode, "eh->eh_entries = 0!");
	}

	return merge_done;
}