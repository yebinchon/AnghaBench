#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct ext2_inode {int i_mode; int i_links_count; scalar_t__ i_size; int /*<<< orphan*/  i_flags; } ;
typedef  int /*<<< orphan*/  inode ;
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  TYPE_1__* ext2_filsys ;
typedef  int /*<<< orphan*/  ext2_file_t ;
typedef  scalar_t__ errcode_t ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_8__ {int /*<<< orphan*/  csum_seed; int /*<<< orphan*/  super; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT2_FILE_WRITE ; 
 int /*<<< orphan*/  EXT4_EA_INODE_FL ; 
 int /*<<< orphan*/  EXT4_EXTENTS_FL ; 
 int LINUX_S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,void const*,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct ext2_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ext2_inode*,int) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct ext2_inode*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static errcode_t FUNC12(ext2_filsys fs, const void *value,
				       size_t value_len, ext2_ino_t *ea_ino)
{
	struct ext2_inode inode;
	ext2_ino_t ino;
	ext2_file_t file;
	__u32 hash;
	errcode_t ret;

	ret = FUNC6(fs, 0, 0, 0, &ino);
	if (ret)
		return ret;

	FUNC11(&inode, 0, sizeof(inode));
	inode.i_flags |= EXT4_EA_INODE_FL;
	if (FUNC4(fs->super))
		inode.i_flags |= EXT4_EXTENTS_FL;
	inode.i_size = 0;
	inode.i_mode = LINUX_S_IFREG | 0600;
	inode.i_links_count = 1;
	ret = FUNC10(fs, ino, &inode);
	if (ret)
		return ret;
	/*
	 * ref_count and hash utilize inode's i_*time fields.
	 * ext2fs_write_new_inode() call above initializes these fields with
	 * current time. That's why ref count and hash updates are done
	 * separately below.
	 */
	FUNC8(&inode, 1);
	hash = FUNC0(fs->csum_seed, value, value_len);
	FUNC7(&inode, hash);

	ret = FUNC9(fs, ino, &inode);
	if (ret)
		return ret;

	ret = FUNC2(fs, ino, EXT2_FILE_WRITE, &file);
	if (ret)
		return ret;
	ret = FUNC3(file, value, value_len, NULL);
	FUNC1(file);
	if (ret)
		return ret;

	FUNC5(fs, ino, 1 /* inuse */, 0 /* isdir */);

	*ea_ino = ino;
	return 0;
}