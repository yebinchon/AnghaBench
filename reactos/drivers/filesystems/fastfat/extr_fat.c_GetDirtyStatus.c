
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ FatType; } ;
struct TYPE_7__ {int FatResource; int (* GetDirtyStatus ) (TYPE_2__*,int *) ;TYPE_1__ FatInfo; } ;
typedef TYPE_2__* PDEVICE_EXTENSION ;
typedef int * PBOOLEAN ;
typedef int NTSTATUS ;


 int DPRINT (char*,TYPE_2__*) ;
 int ExAcquireResourceSharedLite (int *,int ) ;
 int ExReleaseResourceLite (int *) ;
 int FALSE ;
 scalar_t__ FAT12 ;
 int STATUS_SUCCESS ;
 int TRUE ;
 int stub1 (TYPE_2__*,int *) ;

NTSTATUS
GetDirtyStatus(
    PDEVICE_EXTENSION DeviceExt,
    PBOOLEAN DirtyStatus)
{
    NTSTATUS Status;

    DPRINT("GetDirtyStatus(DeviceExt %p)\n", DeviceExt);


    if (DeviceExt->FatInfo.FatType == FAT12)
    {
        *DirtyStatus = FALSE;
        return STATUS_SUCCESS;
    }





    ExAcquireResourceSharedLite(&DeviceExt->FatResource, TRUE);
    Status = DeviceExt->GetDirtyStatus(DeviceExt, DirtyStatus);
    ExReleaseResourceLite(&DeviceExt->FatResource);

    return Status;
}
