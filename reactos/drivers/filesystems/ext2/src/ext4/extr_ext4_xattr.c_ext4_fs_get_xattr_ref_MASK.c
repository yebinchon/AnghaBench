#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct rb_root {int dummy; } ;
struct ext4_xattr_ref {int inode_size_rem; int block_size_rem; int /*<<< orphan*/  IrpContext; int /*<<< orphan*/  OnDiskInode; int /*<<< orphan*/ * block_bh; void* IsOnDiskInodeDirty; int /*<<< orphan*/  ordered_list; TYPE_1__* fs; TYPE_2__* inode_ref; void* block_loaded; int /*<<< orphan*/ * iter_from; scalar_t__ ea_size; int /*<<< orphan*/  root; } ;
struct ext4_xattr_ibody_header {int dummy; } ;
struct ext4_xattr_header {int dummy; } ;
typedef  scalar_t__ ext4_fsblk_t ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_11__ {scalar_t__ i_file_acl; } ;
struct TYPE_10__ {TYPE_6__ Inode; } ;
struct TYPE_9__ {int /*<<< orphan*/  sb; } ;
typedef  TYPE_1__* PEXT2_VCB ;
typedef  TYPE_2__* PEXT2_MCB ;
typedef  int /*<<< orphan*/  PEXT2_IRP_CONTEXT ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* TRUE ; 
 int FUNC4 (struct ext4_xattr_ref*) ; 
 int FUNC5 (struct ext4_xattr_ref*) ; 
 int FUNC6 (struct ext4_xattr_ref*) ; 
 int /*<<< orphan*/  FUNC7 (struct ext4_xattr_ref*) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int FUNC11(PEXT2_IRP_CONTEXT IrpContext, PEXT2_VCB fs, PEXT2_MCB inode_ref,
			  struct ext4_xattr_ref *ref)
{
	int rc;
	ext4_fsblk_t xattr_block;
	xattr_block = inode_ref->Inode.i_file_acl;
	FUNC10(&ref->root, 0, sizeof(struct rb_root));
	ref->ea_size = 0;
	ref->iter_from = NULL;
	if (xattr_block) {
		ref->block_bh = FUNC8(&fs->sb, xattr_block);
		if (!ref->block_bh)
			return -EIO;

		ref->block_loaded = TRUE;
	} else
		ref->block_loaded = FALSE;

	ref->inode_ref = inode_ref;
	ref->fs = fs;
	FUNC3(&ref->ordered_list);

	ref->OnDiskInode = FUNC0(fs);
	if (!ref->OnDiskInode) {
		if (xattr_block) {
			FUNC9(ref->block_bh);
			ref->block_bh = NULL;
		}
		return -ENOMEM;
	}
	if (!FUNC2(fs, &inode_ref->Inode, ref->OnDiskInode)) {
		if (xattr_block) {
			FUNC9(ref->block_bh);
			ref->block_bh = NULL;
		}

		FUNC1(fs, ref->OnDiskInode);
		return -EIO;
	}
	ref->IsOnDiskInodeDirty = FALSE;

	if (FUNC6(ref) <
	   sizeof(struct ext4_xattr_ibody_header) +
	   sizeof(__u32))
		ref->inode_size_rem = 0;
	else {
		ref->inode_size_rem =
			FUNC6(ref) -
			sizeof(struct ext4_xattr_ibody_header);
	}

	ref->block_size_rem =
		FUNC4(ref) -
		sizeof(struct ext4_xattr_header) -
		sizeof(__u32);

	rc = FUNC5(ref);
	if (rc != 0) {
		FUNC7(ref);
		if (xattr_block) {
			FUNC9(ref->block_bh);
			ref->block_bh = NULL;
		}

		FUNC1(fs, ref->OnDiskInode);
		return rc;
	}
	ref->IrpContext = IrpContext;
	return 0;
}