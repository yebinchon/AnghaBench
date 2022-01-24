#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* ext2fs_generic_bitmap_64 ;
typedef  int /*<<< orphan*/  ext2fs_generic_bitmap ;
typedef  int __u64 ;
struct TYPE_8__ {int last_tested; int /*<<< orphan*/  test_back; int /*<<< orphan*/  test_seq; int /*<<< orphan*/  test_count; } ;
struct TYPE_10__ {int cluster_bits; int start; int end; TYPE_2__* bitmap_ops; TYPE_1__ stats; } ;
struct TYPE_9__ {int (* test_bmap ) (TYPE_3__*,int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  EXT2FS_TEST_ERROR ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

int FUNC6(ext2fs_generic_bitmap gen_bitmap,
			     __u64 arg)
{
	ext2fs_generic_bitmap_64 bitmap = (ext2fs_generic_bitmap_64) gen_bitmap;
	if (!bitmap)
		return 0;

	if (FUNC0(bitmap)) {
		if (arg & ~0xffffffffULL) {
			FUNC3(gen_bitmap, EXT2FS_TEST_ERROR,
					    0xffffffff);
			return 0;
		}
		return FUNC2(gen_bitmap, arg);
	}

	if (!FUNC1(bitmap))
		return 0;

	arg >>= bitmap->cluster_bits;

#ifdef ENABLE_BMAP_STATS_OPS
	bitmap->stats.test_count++;
	if (arg == bitmap->stats.last_tested + 1)
		bitmap->stats.test_seq++;
	if (arg < bitmap->stats.last_tested)
		bitmap->stats.test_back++;
	bitmap->stats.last_tested = arg;
#endif

	if ((arg < bitmap->start) || (arg > bitmap->end)) {
		FUNC5(bitmap, EXT2FS_TEST_ERROR, arg);
		return 0;
	}

	return bitmap->bitmap_ops->test_bmap(bitmap, arg);
}