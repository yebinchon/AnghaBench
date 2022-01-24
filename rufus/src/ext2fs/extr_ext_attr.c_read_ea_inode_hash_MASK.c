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
struct ext2_inode {int dummy; } ;
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  int /*<<< orphan*/  ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ext2_inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ext2_inode*) ; 

__attribute__((used)) static errcode_t FUNC2(ext2_filsys fs, ext2_ino_t ino, __u32 *hash)
{
	struct ext2_inode inode;
	errcode_t retval;

	retval = FUNC1(fs, ino, &inode);
	if (retval)
		return retval;
	*hash = FUNC0(&inode);
	return 0;
}