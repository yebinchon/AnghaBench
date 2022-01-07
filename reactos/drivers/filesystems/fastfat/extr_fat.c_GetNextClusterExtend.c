
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_8__ {int FatResource; int (* FindAndMarkAvailableCluster ) (TYPE_1__*,scalar_t__*) ;int (* GetNextCluster ) (TYPE_1__*,scalar_t__,int*) ;} ;
typedef int* PULONG ;
typedef TYPE_1__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;


 int DPRINT (char*,TYPE_1__*,scalar_t__) ;
 int ExAcquireResourceExclusiveLite (int *,int ) ;
 int ExReleaseResourceLite (int *) ;
 int NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int TRUE ;
 int WriteCluster (TYPE_1__*,scalar_t__,scalar_t__) ;
 int stub1 (TYPE_1__*,scalar_t__*) ;
 int stub2 (TYPE_1__*,scalar_t__,int*) ;
 int stub3 (TYPE_1__*,scalar_t__*) ;

NTSTATUS
GetNextClusterExtend(
    PDEVICE_EXTENSION DeviceExt,
    ULONG CurrentCluster,
    PULONG NextCluster)
{
    ULONG NewCluster;
    NTSTATUS Status;

    DPRINT("GetNextClusterExtend(DeviceExt %p, CurrentCluster %x)\n",
           DeviceExt, CurrentCluster);

    ExAcquireResourceExclusiveLite(&DeviceExt->FatResource, TRUE);




    if (CurrentCluster == 0)
    {
        Status = DeviceExt->FindAndMarkAvailableCluster(DeviceExt, &NewCluster);
        if (!NT_SUCCESS(Status))
        {
            ExReleaseResourceLite(&DeviceExt->FatResource);
            return Status;
        }

        *NextCluster = NewCluster;
        ExReleaseResourceLite(&DeviceExt->FatResource);
        return STATUS_SUCCESS;
    }

    Status = DeviceExt->GetNextCluster(DeviceExt, CurrentCluster, NextCluster);

    if ((*NextCluster) == 0xFFFFFFFF)
    {



        Status = DeviceExt->FindAndMarkAvailableCluster(DeviceExt, &NewCluster);
        if (!NT_SUCCESS(Status))
        {
            ExReleaseResourceLite(&DeviceExt->FatResource);
            return Status;
        }



        WriteCluster(DeviceExt, CurrentCluster, NewCluster);
        *NextCluster = NewCluster;
    }

    ExReleaseResourceLite(&DeviceExt->FatResource);
    return Status;
}
