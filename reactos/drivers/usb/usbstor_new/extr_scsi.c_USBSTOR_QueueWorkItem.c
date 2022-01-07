
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int WorkQueueItem; int DeviceObject; int Irp; TYPE_2__* Context; } ;
struct TYPE_8__ {TYPE_1__* FDODeviceExtension; } ;
struct TYPE_7__ {int FunctionalDeviceObject; int TimerWorkQueueEnabled; int SrbErrorHandlingActive; } ;
typedef TYPE_2__* PIRP_CONTEXT ;
typedef int PIRP ;
typedef TYPE_3__* PERRORHANDLER_WORKITEM_DATA ;
typedef int NTSTATUS ;
typedef int ERRORHANDLER_WORKITEM_DATA ;


 int DPRINT1 (char*) ;
 int DelayedWorkQueue ;
 int ErrorHandlerWorkItemRoutine ;
 TYPE_3__* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExInitializeWorkItem (int *,int ,TYPE_3__*) ;
 int ExQueueWorkItem (int *,int ) ;
 int FALSE ;
 int NonPagedPool ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_MORE_PROCESSING_REQUIRED ;
 int TRUE ;
 int USB_STOR_TAG ;

NTSTATUS
USBSTOR_QueueWorkItem(
    PIRP_CONTEXT Context,
    PIRP Irp)
{
    PERRORHANDLER_WORKITEM_DATA ErrorHandlerWorkItemData;




    ErrorHandlerWorkItemData = ExAllocatePoolWithTag(NonPagedPool, sizeof(ERRORHANDLER_WORKITEM_DATA), USB_STOR_TAG);
    if (!ErrorHandlerWorkItemData)
    {



        return STATUS_INSUFFICIENT_RESOURCES;
    }




    Context->FDODeviceExtension->SrbErrorHandlingActive = TRUE;




    Context->FDODeviceExtension->TimerWorkQueueEnabled = FALSE;




    ExInitializeWorkItem(&ErrorHandlerWorkItemData->WorkQueueItem,
                         ErrorHandlerWorkItemRoutine,
                         ErrorHandlerWorkItemData);

    ErrorHandlerWorkItemData->DeviceObject = Context->FDODeviceExtension->FunctionalDeviceObject;
    ErrorHandlerWorkItemData->Context = Context;
    ErrorHandlerWorkItemData->Irp = Irp;
    ErrorHandlerWorkItemData->DeviceObject = Context->FDODeviceExtension->FunctionalDeviceObject;

    DPRINT1("Queuing WorkItemROutine\n");
    ExQueueWorkItem(&ErrorHandlerWorkItemData->WorkQueueItem, DelayedWorkQueue);
    return STATUS_MORE_PROCESSING_REQUIRED;
}
