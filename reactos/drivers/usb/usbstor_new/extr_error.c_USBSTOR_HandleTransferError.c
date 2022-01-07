
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_10__ ;


struct TYPE_23__ {scalar_t__ Argument1; } ;
struct TYPE_24__ {TYPE_3__ Others; } ;
struct TYPE_27__ {TYPE_4__ Parameters; } ;
struct TYPE_25__ {scalar_t__ Information; int Status; } ;
struct TYPE_26__ {int RetryCount; struct TYPE_26__* cbw; TYPE_10__* FDODeviceExtension; struct TYPE_26__* Irp; struct TYPE_26__* Self; struct TYPE_26__* PDODeviceExtension; int LowerDeviceObject; TYPE_5__ IoStatus; scalar_t__ Cdb; } ;
struct TYPE_22__ {TYPE_1__* Pipes; } ;
struct TYPE_21__ {int PipeHandle; } ;
struct TYPE_20__ {size_t BulkInPipeIndex; size_t BulkOutPipeIndex; int * LastTimerActiveSrb; int TimerWorkQueueEnabled; void* SrbErrorHandlingActive; TYPE_2__* InterfaceInformation; int LowerDeviceObject; } ;
typedef TYPE_6__* PSCSI_REQUEST_BLOCK ;
typedef TYPE_6__* PIRP_CONTEXT ;
typedef TYPE_8__* PIO_STACK_LOCATION ;
typedef int PDEVICE_OBJECT ;
typedef TYPE_6__* PCDB ;
typedef int NTSTATUS ;


 int ASSERT (TYPE_6__*) ;
 int DPRINT1 (char*,int,...) ;
 void* FALSE ;
 int FreeItem (TYPE_6__*) ;
 int IO_NO_INCREMENT ;
 int IoCompleteRequest (TYPE_6__*,int ) ;
 TYPE_8__* IoGetCurrentIrpStackLocation (TYPE_6__*) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int TRUE ;
 int USBSTOR_HandleExecuteSCSI (TYPE_6__*,TYPE_6__*,int) ;
 int USBSTOR_QueueNextRequest (int ) ;
 int USBSTOR_QueueTerminateRequest (int ,TYPE_6__*) ;
 int USBSTOR_ResetDevice (int ,TYPE_10__*) ;
 int USBSTOR_ResetPipeWithHandle (int ,int ) ;

NTSTATUS
USBSTOR_HandleTransferError(
    PDEVICE_OBJECT DeviceObject,
    PIRP_CONTEXT Context)
{
    NTSTATUS Status = STATUS_SUCCESS;
    PIO_STACK_LOCATION Stack;
    PSCSI_REQUEST_BLOCK Request;
    PCDB pCDB;




    ASSERT(Context);
    ASSERT(Context->PDODeviceExtension);
    ASSERT(Context->PDODeviceExtension->Self);
    ASSERT(Context->Irp);




    Status = USBSTOR_ResetDevice(Context->FDODeviceExtension->LowerDeviceObject, Context->FDODeviceExtension);
    if (NT_SUCCESS(Status))
    {



        Status = USBSTOR_ResetPipeWithHandle(Context->FDODeviceExtension->LowerDeviceObject, Context->FDODeviceExtension->InterfaceInformation->Pipes[Context->FDODeviceExtension->BulkInPipeIndex].PipeHandle);
        if (NT_SUCCESS(Status))
        {



            Status = USBSTOR_ResetPipeWithHandle(Context->FDODeviceExtension->LowerDeviceObject, Context->FDODeviceExtension->InterfaceInformation->Pipes[Context->FDODeviceExtension->BulkOutPipeIndex].PipeHandle);
        }
    }




    Stack = IoGetCurrentIrpStackLocation(Context->Irp);




    Request = (PSCSI_REQUEST_BLOCK)Stack->Parameters.Others.Argument1;
    ASSERT(Request);




    pCDB = (PCDB)Request->Cdb;
    ASSERT(pCDB);

    if (Status != STATUS_SUCCESS || Context->RetryCount >= 1)
    {



        Context->Irp->IoStatus.Status = Status;
        Context->Irp->IoStatus.Information = 0;
        USBSTOR_QueueTerminateRequest(Context->PDODeviceExtension->LowerDeviceObject, Context->Irp);
        IoCompleteRequest(Context->Irp, IO_NO_INCREMENT);




        USBSTOR_QueueNextRequest(Context->PDODeviceExtension->LowerDeviceObject);




        Context->FDODeviceExtension->SrbErrorHandlingActive = FALSE;




        Context->FDODeviceExtension->LastTimerActiveSrb = ((void*)0);
    }
    else
    {
        DPRINT1("Retrying Count %lu %p\n", Context->RetryCount, Context->PDODeviceExtension->Self);




        USBSTOR_HandleExecuteSCSI(Context->PDODeviceExtension->Self, Context->Irp, Context->RetryCount + 1);




        Context->FDODeviceExtension->SrbErrorHandlingActive = FALSE;




        Context->FDODeviceExtension->TimerWorkQueueEnabled = TRUE;




        Context->FDODeviceExtension->LastTimerActiveSrb = ((void*)0);
    }




    FreeItem(Context->cbw);
    FreeItem(Context);


    DPRINT1("USBSTOR_HandleTransferError returning with Status %x\n", Status);
    return Status;
}
