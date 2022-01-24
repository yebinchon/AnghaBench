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
typedef  int /*<<< orphan*/  ext2_u32_list ;
typedef  scalar_t__ ext2_badblocks_list ;
typedef  int /*<<< orphan*/  errcode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

errcode_t FUNC1(ext2_badblocks_list src,
				ext2_badblocks_list *dest)
{
	return FUNC0((ext2_u32_list) src,
			       (ext2_u32_list *) dest);
}