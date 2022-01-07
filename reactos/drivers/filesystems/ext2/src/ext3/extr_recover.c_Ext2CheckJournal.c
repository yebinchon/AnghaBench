
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ext3_super_block {scalar_t__ s_journal_inum; scalar_t__ s_journal_dev; int s_feature_incompat; } ;
struct TYPE_4__ {int Flags; scalar_t__ SuperBlock; } ;
typedef scalar_t__* PULONG ;
typedef TYPE_1__* PEXT2_VCB ;
typedef int INT ;


 int EXT3_FEATURE_INCOMPAT_RECOVER ;
 int FALSE ;
 scalar_t__ IsFlagOn (int ,int ) ;
 scalar_t__ IsVcbReadOnly (TYPE_1__*) ;
 int SetLongFlag (int ,int ) ;
 int TRUE ;
 int VCB_JOURNAL_RECOVER ;

INT
Ext2CheckJournal(
    PEXT2_VCB Vcb,
    PULONG jNo
)
{
    struct ext3_super_block* esb = ((void*)0);


    esb = (struct ext3_super_block *)Vcb->SuperBlock;
    if (IsFlagOn(esb->s_feature_incompat,
                 EXT3_FEATURE_INCOMPAT_RECOVER)) {
        SetLongFlag(Vcb->Flags, VCB_JOURNAL_RECOVER);
    }


    if (IsVcbReadOnly(Vcb)) {
        goto errorout;
    }


    if (esb->s_journal_inum == 0) {
        goto errorout;
    }


    if (esb->s_journal_dev) {
        goto errorout;
    }


    *jNo = esb->s_journal_inum;

    return TRUE;

errorout:

    return FALSE;
}
