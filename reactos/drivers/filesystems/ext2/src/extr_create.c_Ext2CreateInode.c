
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_19__ ;


struct inode {int i_ino; int i_mode; int i_flags; scalar_t__ i_extra_isize; int i_generation; int i_gid; int i_uid; int i_atime; int i_mtime; int i_ctime; int * i_sb; int member_0; } ;
struct ext3_super_block {int s_want_extra_isize; } ;
struct dentry {int dummy; } ;
typedef int ULONG ;
struct TYPE_28__ {int s_feature_incompat; } ;
struct TYPE_27__ {TYPE_4__* Inode; TYPE_3__* Mcb; } ;
struct TYPE_26__ {int gid; int uid; int Flags; int sb; } ;
struct TYPE_25__ {int Buffer; } ;
struct TYPE_24__ {int i_ino; int i_mode; int i_generation; } ;
struct TYPE_22__ {int i_gid; int i_uid; } ;
struct TYPE_21__ {int Buffer; } ;
struct TYPE_23__ {TYPE_2__ Inode; TYPE_1__ ShortName; } ;
struct TYPE_20__ {struct ext3_super_block* s_es; } ;
typedef TYPE_5__* PUNICODE_STRING ;
typedef TYPE_6__* PEXT2_VCB ;
typedef int PEXT2_IRP_CONTEXT ;
typedef TYPE_7__* PEXT2_FCB ;
typedef int NTSTATUS ;
typedef int LARGE_INTEGER ;


 int BLOCKS_PER_GROUP ;
 int DEBUG (int ,char*) ;
 int DL_INF ;
 int DbgBreak () ;
 int EXT2_EXTENTS_FL ;
 int EXT2_FT_DIR ;
 int EXT2_FT_REG_FILE ;
 TYPE_19__* EXT3_SB (int *) ;
 int EXT4_FEATURE_INCOMPAT_EXTENTS ;
 int Ext2AddEntry (int ,TYPE_6__*,TYPE_7__*,struct inode*,TYPE_5__*,struct dentry**) ;
 int Ext2ClearInode (int ,TYPE_6__*,int) ;
 int Ext2FreeEntry (struct dentry*) ;
 int Ext2FreeInode (int ,TYPE_6__*,int,int) ;
 int Ext2LinuxTime (int ) ;
 int Ext2NewInode (int ,TYPE_6__*,int,int,int*) ;
 int Ext2SaveInode (int ,TYPE_6__*,struct inode*) ;
 scalar_t__ IsFlagOn (int ,int ) ;
 int KeQuerySystemTime (int *) ;
 int NT_SUCCESS (int ) ;
 TYPE_8__* SUPER_BLOCK ;
 int S_IFATTR ;
 int S_IFDIR ;
 int S_IFREG ;
 int S_IPERMISSION_MASK ;
 int VCB_USER_IDS ;
 int ext4_ext_tree_init (int ,int *,struct inode*) ;
 scalar_t__ le16_to_cpu (int ) ;

NTSTATUS
Ext2CreateInode(
    PEXT2_IRP_CONTEXT IrpContext,
    PEXT2_VCB Vcb,
    PEXT2_FCB Parent,
    ULONG Type,
    ULONG FileAttr,
    PUNICODE_STRING FileName)
{
    NTSTATUS Status;
    ULONG iGrp;
    ULONG iNo;
    struct inode Inode = { 0 };
    struct dentry *Dentry = ((void*)0);
 struct ext3_super_block *es = EXT3_SB(&Vcb->sb)->s_es;

    LARGE_INTEGER SysTime;

    iGrp = (Parent->Inode->i_ino - 1) / BLOCKS_PER_GROUP;

    DEBUG(DL_INF, ("Ext2CreateInode: %S in %S(Inode=%xh)\n",
                   FileName->Buffer,
                   Parent->Mcb->ShortName.Buffer,
                   Parent->Inode->i_ino));

    Status = Ext2NewInode(IrpContext, Vcb, iGrp, Type, &iNo);
    if (!NT_SUCCESS(Status)) {
        goto errorout;
    }

    KeQuerySystemTime(&SysTime);
    Ext2ClearInode(IrpContext, Vcb, iNo);
    Inode.i_sb = &Vcb->sb;
    Inode.i_ino = iNo;
    Inode.i_ctime = Inode.i_mtime =
    Inode.i_atime = Ext2LinuxTime(SysTime);
    if (IsFlagOn(Vcb->Flags, VCB_USER_IDS)) {
        Inode.i_uid = Vcb->uid;
        Inode.i_gid = Vcb->gid;
    } else {
        Inode.i_uid = Parent->Mcb->Inode.i_uid;
        Inode.i_gid = Parent->Mcb->Inode.i_gid;
    }
    Inode.i_generation = Parent->Inode->i_generation;
    Inode.i_mode = S_IPERMISSION_MASK &
                   Parent->Inode->i_mode;
    if (Type == EXT2_FT_DIR) {
        Inode.i_mode |= S_IFDIR;
    } else if (Type == EXT2_FT_REG_FILE) {
        Inode.i_mode &= S_IFATTR;
        Inode.i_mode |= S_IFREG;
    } else {
        DbgBreak();
    }
 if (le16_to_cpu(es->s_want_extra_isize))
  Inode.i_extra_isize = le16_to_cpu(es->s_want_extra_isize);


    if (IsFlagOn(SUPER_BLOCK->s_feature_incompat, EXT4_FEATURE_INCOMPAT_EXTENTS)) {
        Inode.i_flags |= EXT2_EXTENTS_FL;
        ext4_ext_tree_init(IrpContext, ((void*)0), &Inode);

    } else {

        Ext2SaveInode(IrpContext, Vcb, &Inode);
    }


    Status = Ext2AddEntry(
                 IrpContext,
                 Vcb,
                 Parent,
                 &Inode,
                 FileName,
                 &Dentry
             );

    if (!NT_SUCCESS(Status)) {
        DbgBreak();
        Ext2FreeInode(IrpContext, Vcb, iNo, Type);
        goto errorout;
    }

    DEBUG(DL_INF, ("Ext2CreateInode: New Inode = %xh (Type=%xh)\n",
                   Inode.i_ino, Type));

errorout:

    if (Dentry)
        Ext2FreeEntry(Dentry);

    return Status;
}
