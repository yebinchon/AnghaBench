#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ext2_inode {scalar_t__ i_size; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_block; } ;
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  TYPE_1__* ext2_filsys ;
typedef  int /*<<< orphan*/  ext2_file_t ;
typedef  int /*<<< orphan*/  ext2_extent_handle_t ;
typedef  scalar_t__ errcode_t ;
struct TYPE_6__ {int /*<<< orphan*/  super; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2_FILE_WRITE ; 
 int /*<<< orphan*/  EXT4_EXTENTS_FL ; 
 int /*<<< orphan*/  EXT4_INLINE_DATA_FL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static errcode_t
FUNC8(ext2_filsys fs, ext2_ino_t ino,
			       struct ext2_inode *inode, char *buf, size_t size)
{
	ext2_file_t e2_file;
	errcode_t retval;

	/* Update inode */
	FUNC7(inode->i_block, 0, sizeof(inode->i_block));
	if (FUNC5(fs->super)) {
		ext2_extent_handle_t handle;

		inode->i_flags &= ~EXT4_EXTENTS_FL;
		retval = FUNC1(fs, ino, inode, &handle);
		if (retval)
			return retval;
		FUNC0(handle);
	}
	inode->i_flags &= ~EXT4_INLINE_DATA_FL;
	inode->i_size = 0;
	retval = FUNC6(fs, ino, inode);
	if (retval)
		return retval;

	/* Write out the block buffer */
	retval = FUNC3(fs, ino, EXT2_FILE_WRITE, &e2_file);
	if (retval)
		return retval;
	retval = FUNC4(e2_file, buf, size, 0);
	FUNC2(e2_file);
	return retval;
}