#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ext2fs_generic_bitmap_32 ;
typedef  int /*<<< orphan*/  ext2fs_block_bitmap ;
typedef  int blk_t ;
struct TYPE_2__ {int start; int end; int /*<<< orphan*/  bitmap; int /*<<< orphan*/  description; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2_ET_BAD_BLOCK_UNMARK ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC2(ext2fs_block_bitmap gen_bitmap,
				      blk_t block, int num)
{
	ext2fs_generic_bitmap_32 bitmap = (ext2fs_generic_bitmap_32) gen_bitmap;
	int	i;

	if ((block < bitmap->start) || (block > bitmap->end) ||
	    (block+num-1 > bitmap->end)) {
		FUNC1(EXT2_ET_BAD_BLOCK_UNMARK, block,
				   bitmap->description);
		return;
	}
	for (i=0; i < num; i++)
		FUNC0(block + i - bitmap->start,
				      bitmap->bitmap);
}