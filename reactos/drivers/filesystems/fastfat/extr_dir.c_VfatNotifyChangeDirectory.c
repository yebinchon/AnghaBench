
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int CompletionFilter; } ;
struct TYPE_11__ {TYPE_2__ NotifyDirectory; } ;
struct TYPE_15__ {TYPE_3__ Parameters; int Flags; } ;
struct TYPE_14__ {int NotifyList; int NotifySync; } ;
struct TYPE_13__ {int PathNameU; } ;
struct TYPE_12__ {int Flags; int Irp; TYPE_1__* FileObject; TYPE_6__* DeviceExt; TYPE_7__* Stack; } ;
struct TYPE_9__ {int FsContext2; scalar_t__ FsContext; } ;
typedef TYPE_4__* PVFAT_IRP_CONTEXT ;
typedef TYPE_5__* PVFATFCB ;
typedef TYPE_6__* PVCB ;
typedef int PSTRING ;
typedef TYPE_7__* PIO_STACK_LOCATION ;
typedef int NTSTATUS ;


 int BooleanFlagOn (int ,int ) ;
 int FALSE ;
 int FsRtlNotifyFullChangeDirectory (int ,int *,int ,int ,int ,int ,int ,int ,int *,int *) ;
 int IRPCONTEXT_COMPLETE ;
 int SL_WATCH_TREE ;
 int STATUS_PENDING ;

NTSTATUS VfatNotifyChangeDirectory(PVFAT_IRP_CONTEXT IrpContext)
{
    PVCB pVcb;
    PVFATFCB pFcb;
    PIO_STACK_LOCATION Stack;
    Stack = IrpContext->Stack;
    pVcb = IrpContext->DeviceExt;
    pFcb = (PVFATFCB) IrpContext->FileObject->FsContext;

    FsRtlNotifyFullChangeDirectory(pVcb->NotifySync,
                                   &(pVcb->NotifyList),
                                   IrpContext->FileObject->FsContext2,
                                   (PSTRING)&(pFcb->PathNameU),
                                   BooleanFlagOn(Stack->Flags, SL_WATCH_TREE),
                                   FALSE,
                                   Stack->Parameters.NotifyDirectory.CompletionFilter,
                                   IrpContext->Irp,
                                   ((void*)0),
                                   ((void*)0));


    IrpContext->Flags &= ~IRPCONTEXT_COMPLETE;

    return STATUS_PENDING;
}
