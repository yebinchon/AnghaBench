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
struct ext4_extent {int dummy; } ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct ext4_extent*) ; 
 int /*<<< orphan*/  FUNC1 (struct ext4_extent*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct ext4_extent *ex)
{
	ext4_fsblk_t ee_pblock;
	unsigned int ee_len;
	int ret;

	ee_len    = FUNC0(ex);
	ee_pblock = FUNC1(ex);

	ret = 0;

	return ret;
}