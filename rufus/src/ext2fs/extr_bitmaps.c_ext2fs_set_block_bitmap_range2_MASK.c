#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ext2fs_block_bitmap ;
typedef  int /*<<< orphan*/  errcode_t ;
typedef  int /*<<< orphan*/  blk64_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,void*) ; 

errcode_t FUNC1(ext2fs_block_bitmap bmap,
					 blk64_t start, size_t num,
					 void *in)
{
	return (FUNC0(bmap, start, num, in));
}