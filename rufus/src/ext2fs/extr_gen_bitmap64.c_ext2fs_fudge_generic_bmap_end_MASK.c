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
typedef  scalar_t__ ext2_ino_t ;
typedef  int errcode_t ;
typedef  scalar_t__ __u64 ;
struct TYPE_4__ {scalar_t__ real_end; scalar_t__ end; int /*<<< orphan*/  magic; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__*) ; 

errcode_t FUNC3(ext2fs_generic_bitmap gen_bitmap,
					errcode_t neq,
					__u64 end, __u64 *oend)
{
	ext2fs_generic_bitmap_64 bitmap = (ext2fs_generic_bitmap_64) gen_bitmap;

	if (!bitmap)
		return EINVAL;

	if (FUNC0(bitmap)) {
		ext2_ino_t tmp_oend;
		int retval;

		retval = FUNC2(gen_bitmap,
							 bitmap->magic,
							 neq, end, &tmp_oend);
		if (oend)
			*oend = tmp_oend;
		return retval;
	}

	if (!FUNC1(bitmap))
		return EINVAL;

	if (end > bitmap->real_end)
		return neq;
	if (oend)
		*oend = bitmap->end;
	bitmap->end = end;
	return 0;
}