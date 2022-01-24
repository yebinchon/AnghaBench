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
typedef  int /*<<< orphan*/  ext2fs_inode_bitmap ;
typedef  TYPE_1__* ext2fs_generic_bitmap_32 ;
struct TYPE_3__ {struct TYPE_3__* bitmap; struct TYPE_3__* description; scalar_t__ magic; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 

void FUNC2(ext2fs_inode_bitmap gen_bitmap)
{
	ext2fs_generic_bitmap_32 bitmap = (ext2fs_generic_bitmap_32) gen_bitmap;

	if (FUNC0(gen_bitmap))
		return;

	bitmap->magic = 0;
	if (bitmap->description) {
		FUNC1(&bitmap->description);
		bitmap->description = 0;
	}
	if (bitmap->bitmap) {
		FUNC1(&bitmap->bitmap);
		bitmap->bitmap = 0;
	}
	FUNC1(&bitmap);
}