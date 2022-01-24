#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ext2fs_block_bitmap ;
typedef  TYPE_1__* ext2_filsys ;
typedef  int /*<<< orphan*/  errcode_t ;
typedef  int blk64_t ;
struct TYPE_6__ {int s_first_data_block; } ;
struct TYPE_5__ {TYPE_3__* super; scalar_t__ block_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT2_ET_BLOCK_ALLOC_FAIL ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_EXT2FS_FILSYS ; 
 int /*<<< orphan*/  EXT2_ET_NO_BLOCK_BITMAP ; 
 int FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (scalar_t__,int,int) ; 
 int FUNC3 (scalar_t__) ; 

errcode_t FUNC4(ext2_filsys fs, blk64_t start, blk64_t finish,
				 int num, ext2fs_block_bitmap map, blk64_t *ret)
{
	blk64_t	b = start;
	int	c_ratio;

	FUNC0(fs, EXT2_ET_MAGIC_EXT2FS_FILSYS);

	if (!map)
		map = fs->block_map;
	if (!map)
		return EXT2_ET_NO_BLOCK_BITMAP;
	if (!b)
		b = fs->super->s_first_data_block;
	if (!finish)
		finish = start;
	if (!num)
		num = 1;
	c_ratio = 1 << FUNC3(map);
	b &= ~(c_ratio - 1);
	finish &= ~(c_ratio -1);
	do {
		if (b + num - 1 >= FUNC1(fs->super)) {
			if (finish > start)
				return EXT2_ET_BLOCK_ALLOC_FAIL;
			b = fs->super->s_first_data_block;
		}
		if (FUNC2(map, b, num)) {
			*ret = b;
			return 0;
		}
		b += c_ratio;
	} while (b != finish);
	return EXT2_ET_BLOCK_ALLOC_FAIL;
}