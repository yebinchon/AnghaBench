#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* ext2fs_generic_bitmap_64 ;
typedef  int /*<<< orphan*/  ext2fs_generic_bitmap ;
typedef  int /*<<< orphan*/  ext2fs_block_bitmap ;
typedef  unsigned int blk64_t ;
typedef  int __u64 ;
struct TYPE_8__ {unsigned int cluster_bits; unsigned int start; unsigned int end; TYPE_1__* bitmap_ops; int /*<<< orphan*/  description; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* mark_bmap_extent ) (TYPE_2__*,unsigned int,unsigned int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  EXT2FS_UNMARK_ERROR ; 
 int /*<<< orphan*/  EXT2_ET_BAD_BLOCK_MARK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mark_ext_count ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,unsigned int,unsigned int) ; 

void FUNC7(ext2fs_block_bitmap gen_bmap,
				     blk64_t block, unsigned int num)
{
	ext2fs_generic_bitmap_64 bmap = (ext2fs_generic_bitmap_64) gen_bmap;
	__u64	end = block + num;

	if (!bmap)
		return;

	if (FUNC0(bmap)) {
		if ((block & ~0xffffffffULL) ||
		    ((block+num-1) & ~0xffffffffULL)) {
			FUNC5((ext2fs_generic_bitmap) bmap,
					    EXT2FS_UNMARK_ERROR, 0xffffffff);
			return;
		}
		FUNC3((ext2fs_generic_bitmap) bmap,
					       block, num);
	}

	if (!FUNC1(bmap))
		return;

	FUNC2(bmap, mark_ext_count);

	/* convert to clusters if necessary */
	block >>= bmap->cluster_bits;
	end += (1 << bmap->cluster_bits) - 1;
	end >>= bmap->cluster_bits;
	num = end - block;

	if ((block < bmap->start) || (block > bmap->end) ||
	    (block+num-1 > bmap->end)) {
		FUNC4(EXT2_ET_BAD_BLOCK_MARK, block,
				   bmap->description);
		return;
	}

	bmap->bitmap_ops->mark_bmap_extent(bmap, block, num);
}