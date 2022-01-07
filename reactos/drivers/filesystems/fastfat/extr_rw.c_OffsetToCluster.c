
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {int rootStart; int BytesPerCluster; int SectorsPerCluster; } ;
struct TYPE_7__ {TYPE_1__ FatInfo; } ;
typedef int* PULONG ;
typedef TYPE_2__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef scalar_t__ BOOLEAN ;


 int ASSERT (int ) ;
 int DbgPrint (char*) ;
 int FALSE ;
 int GetNextCluster (TYPE_2__*,int,int*) ;
 int GetNextClusterExtend (TYPE_2__*,int,int*) ;
 int NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;

NTSTATUS
OffsetToCluster(
    PDEVICE_EXTENSION DeviceExt,
    ULONG FirstCluster,
    ULONG FileOffset,
    PULONG Cluster,
    BOOLEAN Extend)
{
    ULONG CurrentCluster;
    ULONG i;
    NTSTATUS Status;





    if (FirstCluster == 0)
    {
        DbgPrint("OffsetToCluster is called with FirstCluster = 0!\n");
        ASSERT(FALSE);
    }

    if (FirstCluster == 1)
    {

        *Cluster = DeviceExt->FatInfo.rootStart + FileOffset
            / (DeviceExt->FatInfo.BytesPerCluster) * DeviceExt->FatInfo.SectorsPerCluster;
        return STATUS_SUCCESS;
    }
    else
    {
        CurrentCluster = FirstCluster;
        if (Extend)
        {
            for (i = 0; i < FileOffset / DeviceExt->FatInfo.BytesPerCluster; i++)
            {
                Status = GetNextClusterExtend (DeviceExt, CurrentCluster, &CurrentCluster);
                if (!NT_SUCCESS(Status))
                    return Status;
            }
            *Cluster = CurrentCluster;
        }
        else
        {
            for (i = 0; i < FileOffset / DeviceExt->FatInfo.BytesPerCluster; i++)
            {
                Status = GetNextCluster (DeviceExt, CurrentCluster, &CurrentCluster);
                if (!NT_SUCCESS(Status))
                    return Status;
            }
            *Cluster = CurrentCluster;
       }
       return STATUS_SUCCESS;
   }
}
