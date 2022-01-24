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
struct ext2_inode {int dummy; } ;
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  int /*<<< orphan*/  ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  int blk64_t ;
typedef  int __u32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ext2_inode*,int,int*) ; 

__attribute__((used)) static errcode_t FUNC4(ext2_filsys fs, ext2_ino_t ino,
				     struct ext2_inode *inode,
				     blk64_t lfree_start, blk64_t free_start,
				     __u32 free_count, int *freed)
{
	blk64_t		pblk;
	int		freed_now = 0;
	__u32		cluster_freed;
	errcode_t	retval = 0;

	/* No bigalloc?  Just free each block. */
	if (FUNC1(fs) == 1) {
		*freed += free_count;
		while (free_count-- > 0)
			FUNC2(fs, free_start++, -1);
		return retval;
	}

	/*
	 * Try to free up to the next cluster boundary.  We assume that all
	 * blocks in a logical cluster map to blocks from the same physical
	 * cluster, and that the offsets within the [pl]clusters match.
	 */
	if (free_start & FUNC0(fs)) {
		retval = FUNC3(fs, ino, inode,
						  lfree_start, &pblk);
		if (retval)
			goto errout;
		if (!pblk) {
			FUNC2(fs, free_start, -1);
			freed_now++;
		}
		cluster_freed = FUNC1(fs) -
			(free_start & FUNC0(fs));
		if (cluster_freed > free_count)
			cluster_freed = free_count;
		free_count -= cluster_freed;
		free_start += cluster_freed;
		lfree_start += cluster_freed;
	}

	/* Free whole clusters from the middle of the range. */
	while (free_count > 0 && free_count >= (unsigned) FUNC1(fs)) {
		FUNC2(fs, free_start, -1);
		freed_now++;
		cluster_freed = FUNC1(fs);
		free_count -= cluster_freed;
		free_start += cluster_freed;
		lfree_start += cluster_freed;
	}

	/* Try to free the last cluster. */
	if (free_count > 0) {
		retval = FUNC3(fs, ino, inode,
						  lfree_start, &pblk);
		if (retval)
			goto errout;
		if (!pblk) {
			FUNC2(fs, free_start, -1);
			freed_now++;
		}
	}

errout:
	*freed += freed_now;
	return retval;
}