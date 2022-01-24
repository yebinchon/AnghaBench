#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct ext3_super_block {int dummy; } ;
struct block_device {int dummy; } ;
typedef  int /*<<< orphan*/  journal_t ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_15__ {struct inode Inode; } ;
struct TYPE_14__ {int /*<<< orphan*/  MainResource; int /*<<< orphan*/  Flags; TYPE_1__* SuperBlock; struct super_block sb; struct block_device bd; } ;
struct TYPE_13__ {int /*<<< orphan*/  s_feature_incompat; } ;
typedef  TYPE_2__* PEXT2_VCB ;
typedef  TYPE_3__* PEXT2_MCB ;
typedef  int /*<<< orphan*/  PEXT2_IRP_CONTEXT ;
typedef  int INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  EXT3_FEATURE_INCOMPAT_RECOVER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_3__*) ; 
 TYPE_3__* FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  VCB_JOURNAL_RECOVER ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (struct inode*) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct block_device*) ; 

INT
FUNC16(
    PEXT2_IRP_CONTEXT  IrpContext,
    PEXT2_VCB          Vcb
)
{
    INT rc = 0;
    ULONG                   jNo = 0;
    PEXT2_MCB               jcb = NULL;
    struct block_device *   bd = &Vcb->bd;
#ifndef __REACTOS__
    struct super_block *    sb = &Vcb->sb;
#endif
    struct inode *          ji = NULL;
    journal_t *             journal = NULL;
    struct ext3_super_block *esb;

    FUNC2(&Vcb->MainResource, TRUE);

    /* check journal inode number */
    if (!FUNC4(Vcb, &jNo)) {
        rc = -1;
        goto errorout;
    }

    /* allocate journal Mcb */
    jcb =  FUNC6(Vcb, jNo);
    if (!jcb) {
        rc = -6;
        goto errorout;
    }

    /* allocate journal inode */
    ji = &jcb->Inode;

    /* initialize journal file from inode */
    journal = FUNC12(ji);

    /* initialzation succeeds ? */
    if (!journal) {
        FUNC10(ji);
        rc = -8;
        goto errorout;
    }

    /* start journal recovery */
    rc = FUNC13(journal);
    if (0 != rc) {
        rc = -9;
        FUNC1("Ext2Fsd: recover_journal: failed "
                 "to recover journal data.\n");
    }

    /* reload super_block and group_description */
    FUNC8(IrpContext, Vcb);
    FUNC7(IrpContext, Vcb);

    /* wipe journal data and clear recover flag in sb */
    if (rc == 0) {
        FUNC14(journal);
        FUNC0(
            Vcb->SuperBlock->s_feature_incompat,
            EXT3_FEATURE_INCOMPAT_RECOVER );
        FUNC9(IrpContext, Vcb);
        FUNC15(bd);
        FUNC0(Vcb->Flags, VCB_JOURNAL_RECOVER);
    }

errorout:

    /* destroy journal structure */
    if (journal) {
        FUNC11(journal);
    }

    /* destory journal Mcb */
    if (jcb) {
        FUNC5(Vcb, jcb);
    }

    FUNC3(&Vcb->MainResource);

    return rc;
}