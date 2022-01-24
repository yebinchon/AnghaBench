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
struct ext4_extent_idx {int /*<<< orphan*/  ei_block; } ;
struct ext4_extent {int /*<<< orphan*/  ee_block; } ;
struct ext4_ext_path {int p_depth; int /*<<< orphan*/  p_hdr; struct ext4_extent_idx* p_idx; struct ext4_extent* p_ext; } ;
typedef  int ext4_lblk_t ;
typedef  scalar_t__ ext4_fsblk_t ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,char*,int,...) ; 
 struct ext4_extent* FUNC1 (int /*<<< orphan*/ ) ; 
 struct ext4_extent_idx* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ext4_extent*) ; 
 scalar_t__ FUNC4 (struct ext4_extent*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct inode *inode,
		struct ext4_ext_path *path,
		ext4_lblk_t *logical, ext4_fsblk_t *phys)
{
	struct ext4_extent_idx *ix;
	struct ext4_extent *ex;
	int depth, ee_len;

	if (FUNC6(path == NULL)) {
		FUNC0(inode, "path == NULL *logical %d!", *logical);
		return -EIO;
	}
	depth = path->p_depth;
	*phys = 0;

	if (depth == 0 && path->p_ext == NULL)
		return 0;

	/* usually extent in the path covers blocks smaller
	 * then *logical, but it can be that extent is the
	 * first one in the file */

	ex = path[depth].p_ext;
	ee_len = FUNC3(ex);
	if (*logical < FUNC5(ex->ee_block)) {
		if (FUNC6(FUNC1(path[depth].p_hdr) != ex)) {
			FUNC0(inode,
					"EXT_FIRST_EXTENT != ex *logical %d ee_block %d!",
					*logical, FUNC5(ex->ee_block));
			return -EIO;
		}
		while (--depth >= 0) {
			ix = path[depth].p_idx;
			if (FUNC6(ix != FUNC2(path[depth].p_hdr))) {
				FUNC0(inode,
						"ix (%d) != EXT_FIRST_INDEX (%d) (depth %d)!",
						ix != NULL ? FUNC5(ix->ei_block) : 0,
						FUNC2(path[depth].p_hdr) != NULL ?
						FUNC5(FUNC2(path[depth].p_hdr)->ei_block) : 0,
						depth);
				return -EIO;
			}
		}
		return 0;
	}

	if (FUNC6(*logical < (FUNC5(ex->ee_block) + ee_len))) {
		FUNC0(inode,
				"logical %d < ee_block %d + ee_len %d!",
				*logical, FUNC5(ex->ee_block), ee_len);
		return -EIO;
	}

	*logical = FUNC5(ex->ee_block) + ee_len - 1;
	*phys = FUNC4(ex) + ee_len - 1;
	return 0;
}