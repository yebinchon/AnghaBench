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
typedef  int /*<<< orphan*/  ext2_u32_iterate ;
typedef  scalar_t__ ext2_badblocks_iterate ;
typedef  int /*<<< orphan*/  blk_t ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC1(ext2_badblocks_iterate iter, blk_t *blk)
{
	return FUNC0((ext2_u32_iterate) iter,
				       (__u32 *) blk);
}