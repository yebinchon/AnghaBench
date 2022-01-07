
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ FatType; } ;
struct TYPE_7__ {int FatResource; int (* SetDirtyStatus ) (TYPE_2__*,int ) ;TYPE_1__ FatInfo; } ;
typedef TYPE_2__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef int BOOLEAN ;


 int DPRINT (char*,TYPE_2__*,int ) ;
 int ExAcquireResourceExclusiveLite (int *,int ) ;
 int ExReleaseResourceLite (int *) ;
 scalar_t__ FAT12 ;
 int STATUS_SUCCESS ;
 int TRUE ;
 int stub1 (TYPE_2__*,int ) ;

NTSTATUS
SetDirtyStatus(
    PDEVICE_EXTENSION DeviceExt,
    BOOLEAN DirtyStatus)
{
    NTSTATUS Status;

    DPRINT("SetDirtyStatus(DeviceExt %p, DirtyStatus %d)\n", DeviceExt, DirtyStatus);


    if (DeviceExt->FatInfo.FatType == FAT12)
    {
        return STATUS_SUCCESS;
    }






    ExAcquireResourceExclusiveLite(&DeviceExt->FatResource, TRUE);
    Status = DeviceExt->SetDirtyStatus(DeviceExt, DirtyStatus);
    ExReleaseResourceLite(&DeviceExt->FatResource);

    return Status;
}
