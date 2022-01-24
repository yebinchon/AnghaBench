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
typedef  int /*<<< orphan*/  errcode_t ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_8__ {TYPE_1__* bitmap_ops; int /*<<< orphan*/  magic; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* set_bmap_range ) (TYPE_2__*,int /*<<< orphan*/ ,unsigned int,void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  EXT2FS_UNMARK_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  set_range_count ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,unsigned int,void*) ; 

errcode_t FUNC6(ext2fs_generic_bitmap gen_bmap,
					__u64 start, unsigned int num,
					void *in)
{
	ext2fs_generic_bitmap_64 bmap = (ext2fs_generic_bitmap_64) gen_bmap;

	if (!bmap)
		return EINVAL;

	if (FUNC0(bmap)) {
		if ((start+num-1) & ~0xffffffffULL) {
			FUNC4(gen_bmap, EXT2FS_UNMARK_ERROR,
					    0xffffffff);
			return EINVAL;
		}
		return FUNC3(gen_bmap, bmap->magic,
						       start, num, in);
	}

	if (!FUNC1(bmap))
		return EINVAL;

	FUNC2(bmap, set_range_count);

	return bmap->bitmap_ops->set_bmap_range(bmap, start, num, in);
}