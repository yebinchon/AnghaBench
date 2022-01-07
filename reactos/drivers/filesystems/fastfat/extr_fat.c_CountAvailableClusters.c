
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ FatType; } ;
struct TYPE_11__ {int FatResource; int AvailableClusters; TYPE_1__ FatInfo; int AvailableClustersValid; } ;
struct TYPE_10__ {int QuadPart; } ;
typedef TYPE_2__* PLARGE_INTEGER ;
typedef TYPE_3__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;


 int ExAcquireResourceExclusiveLite (int *,int ) ;
 int ExReleaseResourceLite (int *) ;
 scalar_t__ FAT12 ;
 int FAT12CountAvailableClusters (TYPE_3__*) ;
 scalar_t__ FAT16 ;
 int FAT16CountAvailableClusters (TYPE_3__*) ;
 int FAT32CountAvailableClusters (TYPE_3__*) ;
 scalar_t__ FATX16 ;
 int STATUS_SUCCESS ;
 int TRUE ;

NTSTATUS
CountAvailableClusters(
    PDEVICE_EXTENSION DeviceExt,
    PLARGE_INTEGER Clusters)
{
    NTSTATUS Status = STATUS_SUCCESS;
    ExAcquireResourceExclusiveLite (&DeviceExt->FatResource, TRUE);
    if (!DeviceExt->AvailableClustersValid)
    {
        if (DeviceExt->FatInfo.FatType == FAT12)
            Status = FAT12CountAvailableClusters(DeviceExt);
        else if (DeviceExt->FatInfo.FatType == FAT16 || DeviceExt->FatInfo.FatType == FATX16)
            Status = FAT16CountAvailableClusters(DeviceExt);
        else
            Status = FAT32CountAvailableClusters(DeviceExt);
    }
    if (Clusters != ((void*)0))
    {
        Clusters->QuadPart = DeviceExt->AvailableClusters;
    }
    ExReleaseResourceLite (&DeviceExt->FatResource);

    return Status;
}
