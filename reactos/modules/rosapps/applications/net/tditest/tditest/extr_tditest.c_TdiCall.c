
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ Status; } ;
struct TYPE_7__ {TYPE_2__* UserIosb; int * UserEvent; } ;
typedef int PVOID ;
typedef int * PKEVENT ;
typedef TYPE_1__* PIRP ;
typedef TYPE_2__* PIO_STATUS_BLOCK ;
typedef int PDEVICE_OBJECT ;
typedef scalar_t__ NTSTATUS ;
typedef int KEVENT ;
typedef scalar_t__ BOOLEAN ;


 int Executive ;
 int FALSE ;
 scalar_t__ IoCallDriver (int ,TYPE_1__*) ;
 scalar_t__ IoCancelIrp (TYPE_1__*) ;
 int KeInitializeEvent (int *,int ,int ) ;
 scalar_t__ KeReadStateEvent (int *) ;
 scalar_t__ KeWaitForMultipleObjects (int,int ,int ,int ,int ,int ,int *,int *) ;
 scalar_t__ KeWaitForSingleObject (int *,int ,int ,int ,int *) ;
 int KernelMode ;
 int MAX_TRACE ;
 int MIN_TRACE ;
 int NotificationEvent ;
 scalar_t__ STATUS_CANCELLED ;
 scalar_t__ STATUS_PENDING ;
 scalar_t__ STATUS_SUCCESS ;
 int StopEvent ;
 int TDI_DbgPrint (int ,char*) ;
 int WaitAny ;

NTSTATUS TdiCall(
    PIRP Irp,
    PDEVICE_OBJECT DeviceObject,
    PIO_STATUS_BLOCK IoStatusBlock,
    BOOLEAN CanCancel)
{
 KEVENT Event;
 PKEVENT Events[2];
 NTSTATUS Status;
 Events[0] = &StopEvent;
 Events[1] = &Event;

 KeInitializeEvent(&Event, NotificationEvent, FALSE);
 Irp->UserEvent = &Event;
 Irp->UserIosb = IoStatusBlock;

 Status = IoCallDriver(DeviceObject, Irp);

 if (Status == STATUS_PENDING)
  {
   if (CanCancel)
    {
     Status = KeWaitForMultipleObjects(2, (PVOID)Events, WaitAny, Executive, KernelMode, FALSE, ((void*)0), ((void*)0));

     if (KeReadStateEvent(&StopEvent) != 0)
      {
       if (IoCancelIrp(Irp))
        {
         TDI_DbgPrint(MAX_TRACE, ("Cancelled IRP.\n"));
        }
       else
        {
         TDI_DbgPrint(MIN_TRACE, ("Could not cancel IRP.\n"));
        }
       return STATUS_CANCELLED;
      }
    }
   else
    Status = KeWaitForSingleObject(&Event, Executive, KernelMode, FALSE, ((void*)0));
  }

 return (Status == STATUS_SUCCESS)? IoStatusBlock->Status : STATUS_SUCCESS;
}
