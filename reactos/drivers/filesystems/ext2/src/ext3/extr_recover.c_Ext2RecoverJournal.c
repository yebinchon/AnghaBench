
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct ext3_super_block {int dummy; } ;
struct block_device {int dummy; } ;
typedef int journal_t ;
typedef int ULONG ;
struct TYPE_15__ {struct inode Inode; } ;
struct TYPE_14__ {int MainResource; int Flags; TYPE_1__* SuperBlock; struct super_block sb; struct block_device bd; } ;
struct TYPE_13__ {int s_feature_incompat; } ;
typedef TYPE_2__* PEXT2_VCB ;
typedef TYPE_3__* PEXT2_MCB ;
typedef int PEXT2_IRP_CONTEXT ;
typedef int INT ;


 int ClearLongFlag (int ,int ) ;
 int DbgPrint (char*) ;
 int EXT3_FEATURE_INCOMPAT_RECOVER ;
 int ExAcquireResourceExclusiveLite (int *,int ) ;
 int ExReleaseResourceLite (int *) ;
 int Ext2CheckJournal (TYPE_2__*,int *) ;
 int Ext2FreeMcb (TYPE_2__*,TYPE_3__*) ;
 TYPE_3__* Ext2LoadInternalJournal (TYPE_2__*,int ) ;
 int Ext2RefreshGroup (int ,TYPE_2__*) ;
 int Ext2RefreshSuper (int ,TYPE_2__*) ;
 int Ext2SaveSuper (int ,TYPE_2__*) ;
 int TRUE ;
 int VCB_JOURNAL_RECOVER ;
 int iput (struct inode*) ;
 int journal_destroy (int *) ;
 int * journal_init_inode (struct inode*) ;
 int journal_load (int *) ;
 int journal_wipe_recovery (int *) ;
 int sync_blockdev (struct block_device*) ;

INT
Ext2RecoverJournal(
    PEXT2_IRP_CONTEXT IrpContext,
    PEXT2_VCB Vcb
)
{
    INT rc = 0;
    ULONG jNo = 0;
    PEXT2_MCB jcb = ((void*)0);
    struct block_device * bd = &Vcb->bd;

    struct super_block * sb = &Vcb->sb;

    struct inode * ji = ((void*)0);
    journal_t * journal = ((void*)0);
    struct ext3_super_block *esb;

    ExAcquireResourceExclusiveLite(&Vcb->MainResource, TRUE);


    if (!Ext2CheckJournal(Vcb, &jNo)) {
        rc = -1;
        goto errorout;
    }


    jcb = Ext2LoadInternalJournal(Vcb, jNo);
    if (!jcb) {
        rc = -6;
        goto errorout;
    }


    ji = &jcb->Inode;


    journal = journal_init_inode(ji);


    if (!journal) {
        iput(ji);
        rc = -8;
        goto errorout;
    }


    rc = journal_load(journal);
    if (0 != rc) {
        rc = -9;
        DbgPrint("Ext2Fsd: recover_journal: failed "
                 "to recover journal data.\n");
    }


    Ext2RefreshSuper(IrpContext, Vcb);
    Ext2RefreshGroup(IrpContext, Vcb);


    if (rc == 0) {
        journal_wipe_recovery(journal);
        ClearLongFlag(
            Vcb->SuperBlock->s_feature_incompat,
            EXT3_FEATURE_INCOMPAT_RECOVER );
        Ext2SaveSuper(IrpContext, Vcb);
        sync_blockdev(bd);
        ClearLongFlag(Vcb->Flags, VCB_JOURNAL_RECOVER);
    }

errorout:


    if (journal) {
        journal_destroy(journal);
    }


    if (jcb) {
        Ext2FreeMcb(Vcb, jcb);
    }

    ExReleaseResourceLite(&Vcb->MainResource);

    return rc;
}
