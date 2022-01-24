#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {scalar_t__ SymLink; } ;
struct TYPE_18__ {int /*<<< orphan*/  Flags; TYPE_3__* Mcb; } ;
struct TYPE_17__ {int /*<<< orphan*/  Irp; } ;
struct TYPE_16__ {int /*<<< orphan*/  Inode; int /*<<< orphan*/  FullName; } ;
struct TYPE_15__ {TYPE_1__* FileObject; } ;
struct TYPE_14__ {int /*<<< orphan*/  DeletePending; } ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  TYPE_2__* PIO_STACK_LOCATION ;
typedef  int /*<<< orphan*/  PEXT2_VCB ;
typedef  TYPE_3__* PEXT2_MCB ;
typedef  TYPE_4__* PEXT2_IRP_CONTEXT ;
typedef  TYPE_5__* PEXT2_FCB ;
typedef  TYPE_6__* PEXT2_CCB ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  DL_INF ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_5__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FCB_DELETE_PENDING ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 

NTSTATUS
FUNC7(
    PEXT2_IRP_CONTEXT IrpContext,
    PEXT2_VCB Vcb,
    PEXT2_FCB Fcb,
    PEXT2_CCB Ccb,
    BOOLEAN bDelete
)
{
    PIRP    Irp = IrpContext->Irp;
    PIO_STACK_LOCATION IrpSp;
    NTSTATUS status = STATUS_SUCCESS;
    PEXT2_MCB  Mcb = Fcb->Mcb;

    IrpSp = FUNC3(Irp);

    FUNC1(DL_INF, ( "Ext2SetDispositionInfo: bDelete=%x\n", bDelete));

    if (bDelete) {

        FUNC1(DL_INF, ( "Ext2SetDispositionInformation: Removing %wZ.\n",
                        &Mcb->FullName));

        if (Ccb->SymLink || FUNC4(&Mcb->Inode)) {
            /* always allow deleting on symlinks */
        } else {
            status = FUNC2(IrpContext, Vcb, Fcb, Ccb);
        }

        if (FUNC5(status)) {
            FUNC6(Fcb->Flags, FCB_DELETE_PENDING);
            IrpSp->FileObject->DeletePending = TRUE;
        }

    } else {

        FUNC0(Fcb->Flags, FCB_DELETE_PENDING);
        IrpSp->FileObject->DeletePending = FALSE;
    }

    return status;
}