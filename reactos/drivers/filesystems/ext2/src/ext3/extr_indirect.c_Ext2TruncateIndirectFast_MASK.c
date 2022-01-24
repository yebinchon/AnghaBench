#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_6__ {int /*<<< orphan*/ * i_block; scalar_t__ i_size; scalar_t__ i_blocks; } ;
struct TYPE_7__ {TYPE_1__ Inode; int /*<<< orphan*/  Flags; int /*<<< orphan*/  MetaExts; int /*<<< orphan*/  Extents; } ;
typedef  int /*<<< orphan*/  PEXT2_VCB ;
typedef  TYPE_2__* PEXT2_MCB ;
typedef  int /*<<< orphan*/  PEXT2_IRP_CONTEXT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int LONGLONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int,int*,int*,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  MCB_ZONE_INITED ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

NTSTATUS
FUNC12(
    PEXT2_IRP_CONTEXT IrpContext,
    PEXT2_VCB         Vcb,
    PEXT2_MCB         Mcb
    )
{
    LONGLONG            Vba;
    LONGLONG            Lba;
    LONGLONG            Length;
    NTSTATUS            Status = STATUS_SUCCESS;
    int                 i;

    /* try to load all indirect blocks if mcb zone is not initialized */
    if (!FUNC9(Mcb)) {
        Status = FUNC6(IrpContext, Vcb, Mcb);
        if (!FUNC10(Status)) {
            FUNC3();
            FUNC2(Mcb->Flags, MCB_ZONE_INITED);
            goto errorout;
        }
    }

    FUNC0 (FUNC9(Mcb));

    /* delete all data blocks here */
    if (FUNC8(&Mcb->Extents) != 0) {
        for (i = 0; FUNC7(&Mcb->Extents, i, &Vba, &Lba, &Length); i++) {
            /* ignore the non-existing runs */
            if (-1 == Lba || Vba == 0 || Length <= 0)
                continue;
            /* now do data block free */
            FUNC5(IrpContext, Vcb, (ULONG)(Lba - 1), (ULONG)Length);
        }
    }

    /* delete all meta blocks here */
    if (FUNC8(&Mcb->MetaExts) != 0) {
        for (i = 0; FUNC7(&Mcb->MetaExts, i, &Vba, &Lba, &Length); i++) {
            /* ignore the non-existing runs */
            if (-1 == Lba || Vba == 0 || Length <= 0)
                continue;
            /* now do meta block free */
            FUNC5(IrpContext, Vcb, (ULONG)(Lba - 1), (ULONG)Length);
        }
    }

    /* clear data and meta extents */
    FUNC4(&Mcb->Extents);
    FUNC4(&Mcb->MetaExts);
    FUNC1(Mcb->Flags, MCB_ZONE_INITED);

    /* clear inode blocks & sizes */
    Mcb->Inode.i_blocks = 0;
    Mcb->Inode.i_size = 0;
    FUNC11(&Mcb->Inode.i_block[0], 0, sizeof(__u32) * 15);

    /* the caller will do inode save */

errorout:

    return Status;
}