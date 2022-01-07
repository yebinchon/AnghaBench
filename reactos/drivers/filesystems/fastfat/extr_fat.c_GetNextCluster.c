
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_7__ {int Flags; } ;
struct TYPE_6__ {int FatResource; int (* GetNextCluster ) (TYPE_1__*,scalar_t__,int ) ;} ;
typedef int PULONG ;
typedef TYPE_1__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;


 int ASSERT (int) ;
 int DPRINT (char*,TYPE_1__*,scalar_t__) ;
 int DPRINT1 (char*) ;
 int ExAcquireResourceSharedLite (int *,int ) ;
 int ExReleaseResourceLite (int *) ;
 int STATUS_FILE_CORRUPT_ERROR ;
 int TRUE ;
 int VFAT_BREAK_ON_CORRUPTION ;
 TYPE_3__* VfatGlobalData ;
 int stub1 (TYPE_1__*,scalar_t__,int ) ;

NTSTATUS
GetNextCluster(
    PDEVICE_EXTENSION DeviceExt,
    ULONG CurrentCluster,
    PULONG NextCluster)
{
    NTSTATUS Status;

    DPRINT("GetNextCluster(DeviceExt %p, CurrentCluster %x)\n",
           DeviceExt, CurrentCluster);

    if (CurrentCluster == 0)
    {
        DPRINT1("WARNING: File system corruption detected. You may need to run a disk repair utility.\n");
        if (VfatGlobalData->Flags & VFAT_BREAK_ON_CORRUPTION)
            ASSERT(CurrentCluster != 0);
        return STATUS_FILE_CORRUPT_ERROR;
    }

    ExAcquireResourceSharedLite(&DeviceExt->FatResource, TRUE);
    Status = DeviceExt->GetNextCluster(DeviceExt, CurrentCluster, NextCluster);
    ExReleaseResourceLite(&DeviceExt->FatResource);

    return Status;
}
