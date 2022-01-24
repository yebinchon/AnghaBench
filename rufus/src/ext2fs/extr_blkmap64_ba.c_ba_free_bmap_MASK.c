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
typedef  TYPE_2__* ext2fs_ba_private ;
struct TYPE_6__ {struct TYPE_6__* bitarray; } ;
struct TYPE_5__ {int /*<<< orphan*/  private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**) ; 

__attribute__((used)) static void FUNC1(ext2fs_generic_bitmap_64 bitmap)
{
	ext2fs_ba_private bp = (ext2fs_ba_private) bitmap->private;

	if (!bp)
		return;

	if (bp->bitarray) {
		FUNC0 (&bp->bitarray);
		bp->bitarray = 0;
	}
	FUNC0 (&bp);
	bp = 0;
}