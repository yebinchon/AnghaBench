#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_9__ {int /*<<< orphan*/  Inode; int /*<<< orphan*/  Extents; int /*<<< orphan*/  Flags; } ;
struct TYPE_8__ {int QuadPart; } ;
typedef  TYPE_1__* PLARGE_INTEGER ;
typedef  int /*<<< orphan*/  PEXT2_VCB ;
typedef  TYPE_2__* PEXT2_MCB ;
typedef  int /*<<< orphan*/  PEXT2_IRP_CONTEXT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int LONGLONG ;

/* Variables and functions */
 int BLOCK_BITS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,scalar_t__,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  MCB_ZONE_INITED ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 

NTSTATUS
FUNC8(
    PEXT2_IRP_CONTEXT IrpContext,
    PEXT2_VCB         Vcb,
    PEXT2_MCB         Mcb,
    ULONG             Start,
    ULONG             End,
    PLARGE_INTEGER    Size
    )
{
    ULONG Count = 0, Number = 0, Block = 0;
    NTSTATUS Status = STATUS_SUCCESS;

    if (End <= Start)
        return Status;

    while (End > Start + Count) {

        Number = End - Start - Count;
        Status = FUNC4(IrpContext, Vcb, Mcb, Start + Count,
                                    &Block, &Number);
        if (!FUNC7(Status)) {
            Status = STATUS_INSUFFICIENT_RESOURCES;
            break;
        }
        if (Number == 0) {
            Status = STATUS_INSUFFICIENT_RESOURCES;
            break;
        }

        if (Block && FUNC6(Mcb)) {
            if (!FUNC2(Vcb, Mcb, Start + Count, Block, Number)) {
                FUNC1();
                FUNC0(Mcb->Flags, MCB_ZONE_INITED);
                FUNC3(&Mcb->Extents);
            }
        }
        Count += Number;
    }

    Size->QuadPart = ((LONGLONG)(Start + Count)) << BLOCK_BITS;

    /* save inode whatever it succeeds to expand or not */
    FUNC5(IrpContext, Vcb, &Mcb->Inode);

    return Status;
}