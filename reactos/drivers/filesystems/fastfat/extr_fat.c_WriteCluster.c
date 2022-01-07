
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_4__ {int FatResource; int AvailableClusters; scalar_t__ AvailableClustersValid; int (* WriteCluster ) (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__*) ;} ;
typedef int PLONG ;
typedef TYPE_1__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;


 int ExAcquireResourceExclusiveLite (int *,int ) ;
 int ExReleaseResourceLite (int *) ;
 int InterlockedDecrement (int ) ;
 int InterlockedIncrement (int ) ;
 int TRUE ;
 int stub1 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__*) ;

NTSTATUS
WriteCluster(
    PDEVICE_EXTENSION DeviceExt,
    ULONG ClusterToWrite,
    ULONG NewValue)
{
    NTSTATUS Status;
    ULONG OldValue;

    ExAcquireResourceExclusiveLite (&DeviceExt->FatResource, TRUE);
    Status = DeviceExt->WriteCluster(DeviceExt, ClusterToWrite, NewValue, &OldValue);
    if (DeviceExt->AvailableClustersValid)
    {
        if (OldValue && NewValue == 0)
            InterlockedIncrement((PLONG)&DeviceExt->AvailableClusters);
        else if (OldValue == 0 && NewValue)
            InterlockedDecrement((PLONG)&DeviceExt->AvailableClusters);
    }
    ExReleaseResourceLite(&DeviceExt->FatResource);
    return Status;
}
