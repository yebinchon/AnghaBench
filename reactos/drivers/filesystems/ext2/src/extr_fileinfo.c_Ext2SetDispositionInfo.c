
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ SymLink; } ;
struct TYPE_18__ {int Flags; TYPE_3__* Mcb; } ;
struct TYPE_17__ {int Irp; } ;
struct TYPE_16__ {int Inode; int FullName; } ;
struct TYPE_15__ {TYPE_1__* FileObject; } ;
struct TYPE_14__ {int DeletePending; } ;
typedef int PIRP ;
typedef TYPE_2__* PIO_STACK_LOCATION ;
typedef int PEXT2_VCB ;
typedef TYPE_3__* PEXT2_MCB ;
typedef TYPE_4__* PEXT2_IRP_CONTEXT ;
typedef TYPE_5__* PEXT2_FCB ;
typedef TYPE_6__* PEXT2_CCB ;
typedef int NTSTATUS ;
typedef scalar_t__ BOOLEAN ;


 int ClearLongFlag (int ,int ) ;
 int DEBUG (int ,char*) ;
 int DL_INF ;
 int Ext2IsFileRemovable (TYPE_4__*,int ,TYPE_5__*,TYPE_6__*) ;
 int FALSE ;
 int FCB_DELETE_PENDING ;
 TYPE_2__* IoGetCurrentIrpStackLocation (int ) ;
 scalar_t__ IsInodeSymLink (int *) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int SetLongFlag (int ,int ) ;
 int TRUE ;

NTSTATUS
Ext2SetDispositionInfo(
    PEXT2_IRP_CONTEXT IrpContext,
    PEXT2_VCB Vcb,
    PEXT2_FCB Fcb,
    PEXT2_CCB Ccb,
    BOOLEAN bDelete
)
{
    PIRP Irp = IrpContext->Irp;
    PIO_STACK_LOCATION IrpSp;
    NTSTATUS status = STATUS_SUCCESS;
    PEXT2_MCB Mcb = Fcb->Mcb;

    IrpSp = IoGetCurrentIrpStackLocation(Irp);

    DEBUG(DL_INF, ( "Ext2SetDispositionInfo: bDelete=%x\n", bDelete));

    if (bDelete) {

        DEBUG(DL_INF, ( "Ext2SetDispositionInformation: Removing %wZ.\n",
                        &Mcb->FullName));

        if (Ccb->SymLink || IsInodeSymLink(&Mcb->Inode)) {

        } else {
            status = Ext2IsFileRemovable(IrpContext, Vcb, Fcb, Ccb);
        }

        if (NT_SUCCESS(status)) {
            SetLongFlag(Fcb->Flags, FCB_DELETE_PENDING);
            IrpSp->FileObject->DeletePending = TRUE;
        }

    } else {

        ClearLongFlag(Fcb->Flags, FCB_DELETE_PENDING);
        IrpSp->FileObject->DeletePending = FALSE;
    }

    return status;
}
