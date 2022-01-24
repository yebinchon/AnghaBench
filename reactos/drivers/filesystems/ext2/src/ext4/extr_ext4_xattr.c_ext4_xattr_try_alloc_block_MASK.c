#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ext4_xattr_ref {void* block_loaded; void* IsOnDiskInodeDirty; TYPE_2__* inode_ref; int /*<<< orphan*/  IrpContext; int /*<<< orphan*/  block_bh; TYPE_1__* fs; } ;
typedef  scalar_t__ ext4_fsblk_t ;
struct TYPE_8__ {scalar_t__ i_file_acl; } ;
struct TYPE_7__ {TYPE_3__ Inode; } ;
struct TYPE_6__ {int /*<<< orphan*/  sb; } ;

/* Variables and functions */
 int ENOMEM ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_3__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct ext4_xattr_ref *xattr_ref)
{
	int ret = 0;

	ext4_fsblk_t xattr_block = 0;
	xattr_block = xattr_ref->inode_ref->Inode.i_file_acl;
	if (!xattr_block) {
		ext4_fsblk_t goal =
			FUNC1(&xattr_ref->inode_ref->Inode);

		xattr_block = FUNC2(xattr_ref->IrpContext,
						  &xattr_ref->inode_ref->Inode,
					      goal, 0, NULL,
					      &ret);
		if (ret != 0)
			goto Finish;

		xattr_ref->block_bh = FUNC3(&xattr_ref->fs->sb, xattr_block);
		if (!xattr_ref->block_bh) {
			FUNC0(xattr_ref->IrpContext, &xattr_ref->inode_ref->Inode,
					       xattr_block, 1, 0);
			ret = -ENOMEM;
			goto Finish;
		}

		xattr_ref->inode_ref->Inode.i_file_acl = xattr_block;
		xattr_ref->IsOnDiskInodeDirty = TRUE;
		xattr_ref->block_loaded = TRUE;
	}

Finish:
	return ret;
}