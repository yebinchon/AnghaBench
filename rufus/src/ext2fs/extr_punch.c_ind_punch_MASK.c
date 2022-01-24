#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ext2_inode {int dummy; } ;
typedef  TYPE_1__* ext2_filsys ;
typedef  int /*<<< orphan*/  errcode_t ;
typedef  scalar_t__ blk_t ;
typedef  int blk64_t ;
struct TYPE_7__ {int blocksize; int /*<<< orphan*/  super; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct ext2_inode*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,...) ; 

__attribute__((used)) static errcode_t FUNC7(ext2_filsys fs, struct ext2_inode *inode,
			   char *block_buf, blk_t *p, int level,
			   blk64_t start, blk64_t count, int max)
{
	errcode_t	retval;
	blk_t		b;
	int		i;
	blk64_t		offset, incr;
	int		freed = 0;

#ifdef PUNCH_DEBUG
	printf("Entering ind_punch, level %d, start %llu, count %llu, "
	       "max %d\n", level, start, count, max);
#endif
	incr = 1ULL << ((FUNC0(fs->super) - 2) * level);
	for (i = 0, offset = 0; i < max; i++, p++, offset += incr) {
		if (offset >= start + count)
			break;
		if (*p == 0 || (offset+incr) <= start)
			continue;
		b = *p;
		if (level > 0) {
			blk_t start2;
#ifdef PUNCH_DEBUG
			printf("Reading indirect block %u\n", b);
#endif
			retval = FUNC4(fs, b, block_buf);
			if (retval)
				return retval;
			start2 = (start > offset) ? start - offset : 0;
			retval = FUNC7(fs, inode, block_buf + fs->blocksize,
					   (blk_t *) block_buf, level - 1,
					   start2, count - offset,
					   fs->blocksize >> 2);
			if (retval)
				return retval;
			retval = FUNC5(fs, b, block_buf);
			if (retval)
				return retval;
			if (!FUNC1(block_buf, fs->blocksize))
				continue;
		}
#ifdef PUNCH_DEBUG
		printf("Freeing block %u (offset %llu)\n", b, offset);
#endif
		FUNC2(fs, b, -1);
		*p = 0;
		freed++;
	}
#ifdef PUNCH_DEBUG
	printf("Freed %d blocks\n", freed);
#endif
	return FUNC3(fs, inode, freed);
}