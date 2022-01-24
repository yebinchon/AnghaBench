#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct ext4_xattr_ref {TYPE_2__* fs; TYPE_1__* inode_ref; int /*<<< orphan*/ * OnDiskInode; void* block_loaded; int /*<<< orphan*/ * block_bh; void* IsOnDiskInodeDirty; int /*<<< orphan*/  IrpContext; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_9__ {int /*<<< orphan*/  i_file_acl; } ;
struct TYPE_8__ {scalar_t__ InodeSize; } ;
struct TYPE_7__ {TYPE_3__ Inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 scalar_t__ EXT4_GOOD_OLD_INODE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC4 (struct ext4_xattr_ref*) ; 
 int FUNC5 (struct ext4_xattr_ref*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct ext4_xattr_ref *ref)
{
	int ret;
	sector_t orig_file_acl = ref->inode_ref->Inode.i_file_acl;
	ret = FUNC5(ref);
	if (ref->IsOnDiskInodeDirty) {
		FUNC0(ref->fs->InodeSize > EXT4_GOOD_OLD_INODE_SIZE);

		/* As we may do block allocation in ext4_xattr_write_to_disk */
		if (ret)
			ref->inode_ref->Inode.i_file_acl = orig_file_acl;

		if (!ret) {
			ret = FUNC2(ref->IrpContext, ref->fs, &ref->inode_ref->Inode)
				? 0 : -EIO;
			if (!ret) {
				ret = FUNC3(ref->IrpContext,
						ref->fs,
						&ref->inode_ref->Inode,
						ref->OnDiskInode)
					? 0 : -EIO;
			}
		}
		ref->IsOnDiskInodeDirty = FALSE;
	}
	if (ref->block_loaded) {
		if (!ret)
			FUNC7(ref->block_bh);
		else
			FUNC6(ref->block_bh);

		ref->block_bh = NULL;
		ref->block_loaded = FALSE;
	}
	FUNC4(ref);
	FUNC1(ref->fs, ref->OnDiskInode);
	ref->OnDiskInode = NULL;
	ref->inode_ref = NULL;
	ref->fs = NULL;
	return ret;
}