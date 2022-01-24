#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  Flags; int /*<<< orphan*/  MetaExts; int /*<<< orphan*/  Extents; int /*<<< orphan*/  Inode; } ;
struct TYPE_9__ {scalar_t__ QuadPart; } ;
typedef  TYPE_1__* PLARGE_INTEGER ;
typedef  int /*<<< orphan*/  PEXT2_VCB ;
typedef  TYPE_2__* PEXT2_MCB ;
typedef  int /*<<< orphan*/  PEXT2_IRP_CONTEXT ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MCB_ZONE_INITED ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 

NTSTATUS
FUNC7(
    PEXT2_IRP_CONTEXT IrpContext,
    PEXT2_VCB         Vcb,
    PEXT2_MCB         Mcb,
    PLARGE_INTEGER    Size
)
{
    NTSTATUS status = STATUS_SUCCESS;

    if (FUNC6(&Mcb->Inode)) {
		status = FUNC4(IrpContext, Vcb, Mcb, Size);
    } else {
		status = FUNC5(IrpContext, Vcb, Mcb, Size);
	}

    /* check and clear data/meta mcb extents */
    if (Size->QuadPart == 0) {

        /* check and remove all data extents */
        if (FUNC3(&Mcb->Extents)) {
            FUNC1();
        }
        FUNC2(&Mcb->Extents);
        /* check and remove all meta extents */
        if (FUNC3(&Mcb->MetaExts)) {
            FUNC1();
        }
        FUNC2(&Mcb->MetaExts);
        FUNC0(Mcb->Flags, MCB_ZONE_INITED);
    }

    return status;
}