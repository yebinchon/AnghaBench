#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
struct TYPE_5__ {int /*<<< orphan*/  blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXT2_ET_MAGIC_EXT2FS_FILSYS ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

errcode_t FUNC4(ext2_filsys fs, ext2_ino_t root, ext2_ino_t cwd,
			ext2_ino_t inode, ext2_ino_t *res_inode)
{
	char *buf;
	errcode_t retval;

	FUNC0(fs, EXT2_ET_MAGIC_EXT2FS_FILSYS);

	retval = FUNC2(fs->blocksize, &buf);
	if (retval)
		return retval;

	retval = FUNC3(fs, root, cwd, inode, 0, buf, res_inode);

	FUNC1(&buf);
	return retval;
}