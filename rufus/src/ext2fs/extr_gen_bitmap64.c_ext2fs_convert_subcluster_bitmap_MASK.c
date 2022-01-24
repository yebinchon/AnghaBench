#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ext2fs_generic_bitmap_64 ;
typedef  scalar_t__ ext2fs_block_bitmap ;
typedef  TYPE_2__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  scalar_t__ blk64_t ;
struct TYPE_6__ {scalar_t__ cluster_ratio_bits; } ;
struct TYPE_5__ {scalar_t__ start; scalar_t__ end; scalar_t__ real_end; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 

errcode_t FUNC5(ext2_filsys fs,
					   ext2fs_block_bitmap *bitmap)
{
	ext2fs_generic_bitmap_64 bmap, cmap;
	ext2fs_block_bitmap	gen_bmap = *bitmap, gen_cmap;
	errcode_t		retval;
	blk64_t			i, b_end, c_end;
	int			n, ratio;

	bmap = (ext2fs_generic_bitmap_64) gen_bmap;
	if (fs->cluster_ratio_bits == FUNC2(gen_bmap))
		return 0;	/* Nothing to do */

	retval = FUNC0(fs, "converted cluster bitmap",
					      &gen_cmap);
	if (retval)
		return retval;

	cmap = (ext2fs_generic_bitmap_64) gen_cmap;
	i = bmap->start;
	b_end = bmap->end;
	bmap->end = bmap->real_end;
	c_end = cmap->end;
	cmap->end = cmap->real_end;
	n = 0;
	ratio = 1 << fs->cluster_ratio_bits;
	while (i < bmap->real_end) {
		if (FUNC4(gen_bmap, i)) {
			FUNC3(gen_cmap, i);
			i += ratio - n;
			n = 0;
			continue;
		}
		i++; n++;
		if (n >= ratio)
			n = 0;
	}
	bmap->end = b_end;
	cmap->end = c_end;
	FUNC1(gen_bmap);
	*bitmap = (ext2fs_block_bitmap) cmap;
	return 0;
}