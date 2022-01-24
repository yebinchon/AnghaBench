#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ext2fs_generic_bitmap_32 ;
typedef  int /*<<< orphan*/  ext2fs_generic_bitmap ;
typedef  int /*<<< orphan*/  ext2fs_block_bitmap ;
typedef  int blk_t ;
struct TYPE_3__ {int start; int real_end; int /*<<< orphan*/  description; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT2_ET_BAD_BLOCK_TEST ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_BLOCK_BITMAP ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

int FUNC3(ext2fs_block_bitmap gen_bitmap,
				   blk_t block, int num)
{
	ext2fs_generic_bitmap_32 bitmap = (ext2fs_generic_bitmap_32) gen_bitmap;

	FUNC0(bitmap, EXT2_ET_MAGIC_BLOCK_BITMAP);
	if ((block < bitmap->start) || (block > bitmap->real_end) ||
	    (block+num-1 > bitmap->real_end)) {
		FUNC2(EXT2_ET_BAD_BLOCK_TEST,
				   block, bitmap->description);
		return 0;
	}
	return FUNC1((ext2fs_generic_bitmap)
						      bitmap, block, num);
}