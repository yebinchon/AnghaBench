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
struct inode {int dummy; } ;

/* Variables and functions */
 int FUNC0 (void*,struct inode*,unsigned long) ; 
 int FUNC1 (void*,int /*<<< orphan*/ *,struct inode*) ; 

int FUNC2(void *icb, struct inode *inode, unsigned long start)
{
    int ret = FUNC0(icb, inode, start);

	/* Save modifications on i_blocks field of the inode. */
	if (!ret)
		ret = FUNC1(icb, NULL, inode);

	return ret;
}