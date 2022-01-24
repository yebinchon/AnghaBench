#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* ext2fs_generic_bitmap_64 ;
typedef  TYPE_2__* ext2fs_ba_private ;
typedef  scalar_t__ blk64_t ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_5__ {int /*<<< orphan*/  bitarray; } ;
struct TYPE_4__ {scalar_t__ start; int /*<<< orphan*/  private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(ext2fs_generic_bitmap_64 bitmap, __u64 arg,
				  unsigned int num)
{
	ext2fs_ba_private bp = (ext2fs_ba_private) bitmap->private;
	blk64_t bitno = (blk64_t) arg;
	unsigned int i;

	for (i = 0; i < num; i++)
		FUNC0(bitno + i - bitmap->start, bp->bitarray);
}