#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ext2_inode {int i_flags; int /*<<< orphan*/  i_size; int /*<<< orphan*/ * i_block; int /*<<< orphan*/  i_mode; } ;
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  int /*<<< orphan*/  blk64_t ;
struct TYPE_7__ {int /*<<< orphan*/  io; int /*<<< orphan*/  blocksize; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2FS_MAX_NESTED_LINKS ; 
 scalar_t__ EXT2_ET_SYMLINK_LOOP ; 
 int EXT4_INLINE_DATA_FL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct ext2_inode*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static errcode_t FUNC11(ext2_filsys fs, ext2_ino_t root, ext2_ino_t dir,
			     ext2_ino_t inode, int link_count,
			     char *buf, ext2_ino_t *res_inode)
{
	char *pathname;
	char *buffer = 0;
	errcode_t retval;
	struct ext2_inode ei;
	blk64_t blk;

#ifdef NAMEI_DEBUG
	printf("follow_link: root=%lu, dir=%lu, inode=%lu, lc=%d\n",
	       root, dir, inode, link_count);

#endif
	retval = FUNC7 (fs, inode, &ei);
	if (retval) return retval;
	if (!FUNC0 (ei.i_mode)) {
		*res_inode = inode;
		return 0;
	}
	if (link_count++ >= EXT2FS_MAX_NESTED_LINKS)
		return EXT2_ET_SYMLINK_LOOP;

	if (FUNC6(&ei))
		pathname = (char *)&(ei.i_block[0]);
	else if (ei.i_flags & EXT4_INLINE_DATA_FL) {
		retval = FUNC4(ei.i_size, &buffer);
		if (retval)
			return retval;

		retval = FUNC5(fs, inode,
						&ei, buffer, NULL);
		if (retval) {
			FUNC2(&buffer);
			return retval;
		}
		pathname = buffer;
	} else {
		retval = FUNC1(fs, inode, &ei, NULL, 0, 0, NULL, &blk);
		if (retval)
			return retval;

		retval = FUNC3(fs->blocksize, &buffer);
		if (retval)
			return retval;

		retval = FUNC8(fs->io, blk, 1, buffer);
		if (retval) {
			FUNC2(&buffer);
			return retval;
		}
		pathname = buffer;
	}

	retval = FUNC9(fs, root, dir, pathname, ei.i_size, 1,
			    link_count, buf, res_inode);
	if (buffer)
		FUNC2(&buffer);
	return retval;
}