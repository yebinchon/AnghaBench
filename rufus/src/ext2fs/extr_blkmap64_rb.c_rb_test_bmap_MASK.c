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
struct ext2fs_rb_private {int dummy; } ;
typedef  TYPE_1__* ext2fs_generic_bitmap_64 ;
typedef  int /*<<< orphan*/  __u64 ;
struct TYPE_3__ {scalar_t__ start; scalar_t__ private; } ;

/* Variables and functions */
 int FUNC0 (struct ext2fs_rb_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) inline
static int FUNC1(ext2fs_generic_bitmap_64 bitmap, __u64 arg)
{
	struct ext2fs_rb_private *bp;

	bp = (struct ext2fs_rb_private *) bitmap->private;
	arg -= bitmap->start;

	return FUNC0(bp, arg);
}