#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ext2fs_generic_bitmap_64 ;
typedef  int /*<<< orphan*/  ext2fs_generic_bitmap ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_4__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__u64 FUNC3(ext2fs_generic_bitmap gen_bitmap)
{
	ext2fs_generic_bitmap_64 bitmap = (ext2fs_generic_bitmap_64) gen_bitmap;

	if (!bitmap)
		return EINVAL;

	if (FUNC0(bitmap))
		return FUNC2(gen_bitmap);

	if (!FUNC1(bitmap))
		return EINVAL;

	return bitmap->start;
}