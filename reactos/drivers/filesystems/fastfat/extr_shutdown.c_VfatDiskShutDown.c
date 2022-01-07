
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ Status; } ;
struct TYPE_5__ {int StorageDevice; } ;
typedef TYPE_1__* PVCB ;
typedef scalar_t__ PIRP ;
typedef scalar_t__ NTSTATUS ;
typedef int KEVENT ;
typedef TYPE_2__ IO_STATUS_BLOCK ;


 int Executive ;
 int FALSE ;
 int IRP_MJ_SHUTDOWN ;
 scalar_t__ IoBuildSynchronousFsdRequest (int ,int ,int *,int ,int *,int *,TYPE_2__*) ;
 scalar_t__ IoCallDriver (int ,scalar_t__) ;
 int KeInitializeEvent (int *,int ,int ) ;
 int KeWaitForSingleObject (int *,int ,int ,int ,int *) ;
 int KernelMode ;
 int NotificationEvent ;
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ;
 scalar_t__ STATUS_PENDING ;

__attribute__((used)) static
NTSTATUS
VfatDiskShutDown(
    PVCB Vcb)
{
    PIRP Irp;
    KEVENT Event;
    NTSTATUS Status;
    IO_STATUS_BLOCK IoStatus;

    KeInitializeEvent(&Event, NotificationEvent, FALSE);
    Irp = IoBuildSynchronousFsdRequest(IRP_MJ_SHUTDOWN, Vcb->StorageDevice,
                                       ((void*)0), 0, ((void*)0), &Event, &IoStatus);
    if (Irp)
    {
        Status = IoCallDriver(Vcb->StorageDevice, Irp);
        if (Status == STATUS_PENDING)
        {
            KeWaitForSingleObject(&Event, Executive, KernelMode, FALSE, ((void*)0));
            Status = IoStatus.Status;
        }
    }
    else
    {
        Status = STATUS_INSUFFICIENT_RESOURCES;
    }

    return Status;
}
