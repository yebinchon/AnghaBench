
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {scalar_t__ SectorsPerCluster; } ;
struct TYPE_7__ {TYPE_1__ FatInfo; } ;
typedef scalar_t__* PULONG ;
typedef TYPE_2__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef scalar_t__ BOOLEAN ;


 int GetNextCluster (TYPE_2__*,scalar_t__,scalar_t__*) ;
 int GetNextClusterExtend (TYPE_2__*,scalar_t__,scalar_t__*) ;
 int STATUS_SUCCESS ;

NTSTATUS
NextCluster(
    PDEVICE_EXTENSION DeviceExt,
    ULONG FirstCluster,
    PULONG CurrentCluster,
    BOOLEAN Extend)
{
    if (FirstCluster == 1)
    {
        (*CurrentCluster) += DeviceExt->FatInfo.SectorsPerCluster;
        return STATUS_SUCCESS;
    }
    else
    {
        if (Extend)
            return GetNextClusterExtend(DeviceExt, (*CurrentCluster), CurrentCluster);
        else
            return GetNextCluster(DeviceExt, (*CurrentCluster), CurrentCluster);
    }
}
