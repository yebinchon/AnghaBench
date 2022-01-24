#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ext2_inode_large {void* i_crtime; scalar_t__ i_extra_isize; } ;
struct ext2_inode {void* i_atime; void* i_mtime; void* i_ctime; } ;
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  TYPE_1__* ext2_filsys ;
typedef  int /*<<< orphan*/  errcode_t ;
typedef  void* __u32 ;
struct TYPE_4__ {void* now; int /*<<< orphan*/  super; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ EXT2_GOOD_OLD_INODE_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ext2_inode*) ; 
 struct ext2_inode* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct ext2_inode*,int /*<<< orphan*/ ,int) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 

errcode_t FUNC6(ext2_filsys fs, ext2_ino_t ino,
				 struct ext2_inode *inode)
{
	struct ext2_inode	*buf;
	int 			size = FUNC0(fs->super);
	struct ext2_inode_large	*large_inode;
	errcode_t		retval;
	__u32 			t = fs->now ? fs->now : FUNC5(NULL);

	if (!inode->i_ctime)
		inode->i_ctime = t;
	if (!inode->i_mtime)
		inode->i_mtime = t;
	if (!inode->i_atime)
		inode->i_atime = t;

	if (size == sizeof(struct ext2_inode))
		return FUNC1(fs, ino, inode,
					       sizeof(struct ext2_inode));

	buf = FUNC3(size);
	if (!buf)
		return ENOMEM;

	FUNC4(buf, 0, size);
	*buf = *inode;

	large_inode = (struct ext2_inode_large *) buf;
	large_inode->i_extra_isize = sizeof(struct ext2_inode_large) -
		EXT2_GOOD_OLD_INODE_SIZE;
	if (!large_inode->i_crtime)
		large_inode->i_crtime = t;

	retval = FUNC1(fs, ino, buf, size);
	FUNC2(buf);
	return retval;
}