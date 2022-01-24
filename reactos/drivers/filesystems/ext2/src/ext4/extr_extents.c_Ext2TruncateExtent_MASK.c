#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ loff_t ;
typedef  int ULONGLONG ;
typedef  scalar_t__ ULONG ;
struct TYPE_15__ {scalar_t__ i_size; } ;
struct TYPE_14__ {TYPE_4__ Inode; int /*<<< orphan*/  Extents; int /*<<< orphan*/  Flags; } ;
struct TYPE_13__ {scalar_t__ max_data_blocks; } ;
struct TYPE_12__ {int QuadPart; } ;
typedef  TYPE_1__* PLARGE_INTEGER ;
typedef  TYPE_2__* PEXT2_VCB ;
typedef  TYPE_3__* PEXT2_MCB ;
typedef  int /*<<< orphan*/  PEXT2_IRP_CONTEXT ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int BLOCK_BITS ; 
 int BLOCK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_4__*) ; 
 int /*<<< orphan*/  MCB_ZONE_INITED ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_4__*,scalar_t__) ; 

NTSTATUS
FUNC6(
    PEXT2_IRP_CONTEXT IrpContext,
    PEXT2_VCB         Vcb,
    PEXT2_MCB         Mcb,
    PLARGE_INTEGER    Size
    )
{
    NTSTATUS Status = STATUS_SUCCESS;

    ULONG    Extra = 0;
    ULONG    Wanted = 0;
    ULONG    End;
    ULONG    Removed;
    int      err;

    /* translate file size to block */
    End = Vcb->max_data_blocks;
    Wanted = (ULONG)((Size->QuadPart + BLOCK_SIZE - 1) >> BLOCK_BITS);

    /* calculate blocks to be freed */
    Extra = End - Wanted;

    err = FUNC5(IrpContext, &Mcb->Inode, Wanted);
    if (err == 0) {
        if (!FUNC2(Vcb, Mcb, Wanted, Extra)) {
            FUNC0(Mcb->Flags, MCB_ZONE_INITED);
            FUNC1(&Mcb->Extents);
        }
        Extra = 0;
    } else {
        Status = STATUS_INSUFFICIENT_RESOURCES;
    }

    if (!FUNC4(Status)) {
        Size->QuadPart += ((ULONGLONG)Extra << BLOCK_BITS);
    }

    if (Mcb->Inode.i_size > (loff_t)(Size->QuadPart))
        Mcb->Inode.i_size = (loff_t)(Size->QuadPart);

    /* Save modifications on i_blocks field and i_size field of the inode. */
    FUNC3(IrpContext, Vcb, &Mcb->Inode);

    return Status;
}