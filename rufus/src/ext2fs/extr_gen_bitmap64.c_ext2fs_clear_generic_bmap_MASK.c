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
typedef  TYPE_2__* ext2fs_generic_bitmap_64 ;
typedef  int /*<<< orphan*/  ext2fs_generic_bitmap ;
struct TYPE_6__ {TYPE_1__* bitmap_ops; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* clear_bmap ) (TYPE_2__*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3(ext2fs_generic_bitmap gen_bitmap)
{
	ext2fs_generic_bitmap_64 bitmap = (ext2fs_generic_bitmap_64) gen_bitmap;

	if (FUNC0(bitmap))
		FUNC1(gen_bitmap);
	else
		bitmap->bitmap_ops->clear_bmap(bitmap);
}