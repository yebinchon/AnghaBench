#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_6__ {int rootStart; int BytesPerCluster; int SectorsPerCluster; } ;
struct TYPE_7__ {TYPE_1__ FatInfo; } ;
typedef  int* PULONG ;
typedef  TYPE_2__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 

NTSTATUS
FUNC5(
    PDEVICE_EXTENSION DeviceExt,
    ULONG FirstCluster,
    ULONG FileOffset,
    PULONG Cluster,
    BOOLEAN Extend)
{
    ULONG CurrentCluster;
    ULONG i;
    NTSTATUS Status;
/*
    DPRINT("OffsetToCluster(DeviceExt %x, Fcb %x, FirstCluster %x,"
           " FileOffset %x, Cluster %x, Extend %d)\n", DeviceExt,
           Fcb, FirstCluster, FileOffset, Cluster, Extend);
*/
    if (FirstCluster == 0)
    {
        FUNC1("OffsetToCluster is called with FirstCluster = 0!\n");
        FUNC0(FALSE);
    }

    if (FirstCluster == 1)
    {
        /* root of FAT16 or FAT12 */
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
                Status = FUNC3 (DeviceExt, CurrentCluster, &CurrentCluster);
                if (!FUNC4(Status))
                    return Status;
            }
            *Cluster = CurrentCluster;
        }
        else
        {
            for (i = 0; i < FileOffset / DeviceExt->FatInfo.BytesPerCluster; i++)
            {
                Status = FUNC2 (DeviceExt, CurrentCluster, &CurrentCluster);
                if (!FUNC4(Status))
                    return Status;
            }
            *Cluster = CurrentCluster;
       }
       return STATUS_SUCCESS;
   }
}