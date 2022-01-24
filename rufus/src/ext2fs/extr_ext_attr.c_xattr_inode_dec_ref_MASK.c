#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct ext2_inode_large {scalar_t__ i_dtime; scalar_t__ i_links_count; } ;
struct ext2_inode {int dummy; } ;
typedef  int /*<<< orphan*/  inode ;
typedef  int /*<<< orphan*/  ext2_ino_t ;
typedef  TYPE_1__* ext2_filsys ;
typedef  scalar_t__ errcode_t ;
typedef  scalar_t__ __u64 ;
struct TYPE_9__ {scalar_t__ now; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ext2_inode_large*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode_large*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__*,struct ext2_inode*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long long) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,struct ext2_inode*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static errcode_t FUNC10(ext2_filsys fs, ext2_ino_t ino)
{
	struct ext2_inode_large inode;
	__u64 ref_count;
	errcode_t ret;

	ret = FUNC6(fs, ino, (struct ext2_inode *)&inode,
				     sizeof(inode));
	if (ret)
		goto out;

	ref_count = FUNC2(FUNC0(&inode));
	ref_count--;
	FUNC7(FUNC0(&inode), ref_count);

	if (ref_count)
		goto write_out;

	inode.i_links_count = 0;
	inode.i_dtime = fs->now ? fs->now : FUNC9(0);

	ret = FUNC1(fs, ino, &inode);
	if (ret)
		goto write_out;

	if (FUNC4(fs, (struct ext2_inode *)&inode)) {
		ret = FUNC5(fs, ino, (struct ext2_inode *)&inode, NULL,
				   0, ~0ULL);
		if (ret)
			goto out;
	}

	FUNC3(fs, ino, -1 /* inuse */, 0 /* is_dir */);

write_out:
	ret = FUNC8(fs, ino, (struct ext2_inode *)&inode,
				      sizeof(inode));
out:
	return ret;
}