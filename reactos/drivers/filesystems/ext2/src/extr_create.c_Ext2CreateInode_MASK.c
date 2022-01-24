#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_19__ ;

/* Type definitions */
struct inode {int i_ino; int i_mode; int /*<<< orphan*/  i_flags; scalar_t__ i_extra_isize; int /*<<< orphan*/  i_generation; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/ * i_sb; int /*<<< orphan*/  member_0; } ;
struct ext3_super_block {int /*<<< orphan*/  s_want_extra_isize; } ;
struct dentry {int dummy; } ;
typedef  int ULONG ;
struct TYPE_28__ {int /*<<< orphan*/  s_feature_incompat; } ;
struct TYPE_27__ {TYPE_4__* Inode; TYPE_3__* Mcb; } ;
struct TYPE_26__ {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  Flags; int /*<<< orphan*/  sb; } ;
struct TYPE_25__ {int /*<<< orphan*/  Buffer; } ;
struct TYPE_24__ {int i_ino; int i_mode; int /*<<< orphan*/  i_generation; } ;
struct TYPE_22__ {int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; } ;
struct TYPE_21__ {int /*<<< orphan*/  Buffer; } ;
struct TYPE_23__ {TYPE_2__ Inode; TYPE_1__ ShortName; } ;
struct TYPE_20__ {struct ext3_super_block* s_es; } ;
typedef  TYPE_5__* PUNICODE_STRING ;
typedef  TYPE_6__* PEXT2_VCB ;
typedef  int /*<<< orphan*/  PEXT2_IRP_CONTEXT ;
typedef  TYPE_7__* PEXT2_FCB ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  LARGE_INTEGER ;

/* Variables and functions */
 int BLOCKS_PER_GROUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  DL_INF ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  EXT2_EXTENTS_FL ; 
 int EXT2_FT_DIR ; 
 int EXT2_FT_REG_FILE ; 
 TYPE_19__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EXT4_FEATURE_INCOMPAT_EXTENTS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_6__*,TYPE_7__*,struct inode*,TYPE_5__*,struct dentry**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_6__*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_6__*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_6__*,struct inode*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_8__* SUPER_BLOCK ; 
 int S_IFATTR ; 
 int S_IFDIR ; 
 int S_IFREG ; 
 int S_IPERMISSION_MASK ; 
 int /*<<< orphan*/  VCB_USER_IDS ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct inode*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

NTSTATUS
FUNC15(
    PEXT2_IRP_CONTEXT   IrpContext,
    PEXT2_VCB           Vcb,
    PEXT2_FCB           Parent,
    ULONG               Type,
    ULONG               FileAttr,
    PUNICODE_STRING     FileName)
{
    NTSTATUS    Status;
    ULONG       iGrp;
    ULONG       iNo;
    struct inode Inode = { 0 };
    struct dentry *Dentry = NULL;
	struct ext3_super_block *es = FUNC2(&Vcb->sb)->s_es;

    LARGE_INTEGER   SysTime;

    iGrp = (Parent->Inode->i_ino - 1) / BLOCKS_PER_GROUP;

    FUNC0(DL_INF, ("Ext2CreateInode: %S in %S(Inode=%xh)\n",
                   FileName->Buffer,
                   Parent->Mcb->ShortName.Buffer,
                   Parent->Inode->i_ino));

    Status = FUNC8(IrpContext, Vcb, iGrp, Type, &iNo);
    if (!FUNC12(Status)) {
        goto errorout;
    }

    FUNC11(&SysTime);
    FUNC4(IrpContext, Vcb, iNo);
    Inode.i_sb = &Vcb->sb;
    Inode.i_ino = iNo;
    Inode.i_ctime = Inode.i_mtime =
    Inode.i_atime = FUNC7(SysTime);
    if (FUNC10(Vcb->Flags, VCB_USER_IDS)) {
        Inode.i_uid = Vcb->uid;
        Inode.i_gid = Vcb->gid;
    } else {
        Inode.i_uid = Parent->Mcb->Inode.i_uid;
        Inode.i_gid = Parent->Mcb->Inode.i_gid;
    }
    Inode.i_generation = Parent->Inode->i_generation;
    Inode.i_mode = S_IPERMISSION_MASK &
                   Parent->Inode->i_mode;
    if (Type == EXT2_FT_DIR)  {
        Inode.i_mode |= S_IFDIR;
    } else if (Type == EXT2_FT_REG_FILE) {
        Inode.i_mode &= S_IFATTR;
        Inode.i_mode |= S_IFREG;
    } else {
        FUNC1();
    }
	if (FUNC14(es->s_want_extra_isize))
		Inode.i_extra_isize = FUNC14(es->s_want_extra_isize);

    /* Force using extent */
    if (FUNC10(SUPER_BLOCK->s_feature_incompat, EXT4_FEATURE_INCOMPAT_EXTENTS)) {
        Inode.i_flags |= EXT2_EXTENTS_FL;
        FUNC13(IrpContext, NULL, &Inode);
        /* ext4_ext_tree_init will save inode body */
    } else {
        /* save inode body to cache */
        FUNC9(IrpContext, Vcb, &Inode);
    }

    /* add new entry to its parent */
    Status = FUNC3(
                 IrpContext,
                 Vcb,
                 Parent,
                 &Inode,
                 FileName,
                 &Dentry
             );

    if (!FUNC12(Status)) {
        FUNC1();
        FUNC6(IrpContext, Vcb, iNo, Type);
        goto errorout;
    }

    FUNC0(DL_INF, ("Ext2CreateInode: New Inode = %xh (Type=%xh)\n",
                   Inode.i_ino, Type));

errorout:

    if (Dentry)
        FUNC5(Dentry);

    return Status;
}