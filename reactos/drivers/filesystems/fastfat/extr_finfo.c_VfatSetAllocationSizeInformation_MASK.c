#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_41__   TYPE_9__ ;
typedef  struct TYPE_40__   TYPE_8__ ;
typedef  struct TYPE_39__   TYPE_7__ ;
typedef  struct TYPE_38__   TYPE_6__ ;
typedef  struct TYPE_37__   TYPE_5__ ;
typedef  struct TYPE_36__   TYPE_4__ ;
typedef  struct TYPE_35__   TYPE_3__ ;
typedef  struct TYPE_34__   TYPE_2__ ;
typedef  struct TYPE_33__   TYPE_1__ ;
typedef  struct TYPE_32__   TYPE_16__ ;
typedef  struct TYPE_31__   TYPE_11__ ;
typedef  struct TYPE_30__   TYPE_10__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_33__ {scalar_t__ LowPart; scalar_t__ HighPart; } ;
struct TYPE_41__ {TYPE_1__ u; int /*<<< orphan*/  LowPart; int /*<<< orphan*/  HighPart; } ;
struct TYPE_36__ {scalar_t__ FileSize; unsigned short FirstCluster; scalar_t__ FirstClusterHigh; } ;
struct TYPE_34__ {scalar_t__ FileSize; scalar_t__ FirstCluster; } ;
struct TYPE_32__ {TYPE_4__ Fat; TYPE_2__ FatX; } ;
struct TYPE_37__ {scalar_t__ LowPart; } ;
struct TYPE_38__ {TYPE_5__ u; } ;
struct TYPE_39__ {TYPE_6__ AllocationSize; } ;
struct TYPE_40__ {scalar_t__ LastCluster; scalar_t__ LastOffset; int /*<<< orphan*/  Flags; TYPE_16__ entry; TYPE_7__ RFCB; int /*<<< orphan*/  PathNameU; } ;
struct TYPE_35__ {scalar_t__ BytesPerCluster; scalar_t__ FatType; } ;
struct TYPE_31__ {TYPE_3__ FatInfo; } ;
struct TYPE_30__ {int /*<<< orphan*/  SectionObjectPointer; } ;
typedef  TYPE_8__* PVFATFCB ;
typedef  TYPE_9__* PLARGE_INTEGER ;
typedef  TYPE_10__* PFILE_OBJECT ;
typedef  TYPE_11__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 scalar_t__ FAT32 ; 
 int /*<<< orphan*/  FUNC3 (TYPE_11__*) ; 
 int /*<<< orphan*/  FCB_IS_DIRTY ; 
 int /*<<< orphan*/  FILE_ACTION_MODIFIED ; 
 int /*<<< orphan*/  FILE_NOTIFY_CHANGE_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_9__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_11__*,scalar_t__,scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_11__*,scalar_t__,scalar_t__,scalar_t__*,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  STATUS_DISK_FULL ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  STATUS_USER_MAPPED_FILE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC9 (TYPE_10__*,TYPE_8__*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_11__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_11__*,scalar_t__,int) ; 
 scalar_t__ FUNC12 (TYPE_11__*,TYPE_16__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_11__*,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (TYPE_11__*) ; 

NTSTATUS
FUNC15(
    PFILE_OBJECT FileObject,
    PVFATFCB Fcb,
    PDEVICE_EXTENSION DeviceExt,
    PLARGE_INTEGER AllocationSize)
{
    ULONG OldSize;
    ULONG Cluster, FirstCluster;
    NTSTATUS Status;

    ULONG ClusterSize = DeviceExt->FatInfo.BytesPerCluster;
    ULONG NewSize = AllocationSize->u.LowPart;
    ULONG NCluster;
    BOOLEAN AllocSizeChanged = FALSE, IsFatX = FUNC14(DeviceExt);

    FUNC1("VfatSetAllocationSizeInformation(File <%wZ>, AllocationSize %d %u)\n",
           &Fcb->PathNameU, AllocationSize->HighPart, AllocationSize->LowPart);

    if (IsFatX)
        OldSize = Fcb->entry.FatX.FileSize;
    else
        OldSize = Fcb->entry.Fat.FileSize;

    if (AllocationSize->u.HighPart > 0)
    {
        return STATUS_INVALID_PARAMETER;
    }

    if (OldSize == NewSize)
    {
        return STATUS_SUCCESS;
    }

    FirstCluster = FUNC12(DeviceExt, &Fcb->entry);

    if (NewSize > Fcb->RFCB.AllocationSize.u.LowPart)
    {
        AllocSizeChanged = TRUE;
        if (FirstCluster == 0)
        {
            Fcb->LastCluster = Fcb->LastOffset = 0;
            Status = FUNC6(DeviceExt, FirstCluster, &FirstCluster, TRUE);
            if (!FUNC5(Status))
            {
                FUNC2("NextCluster failed. Status = %x\n", Status);
                return Status;
            }

            if (FirstCluster == 0xffffffff)
            {
                return STATUS_DISK_FULL;
            }

            Status = FUNC7(DeviceExt, FirstCluster,
                                     FUNC8(NewSize - 1, ClusterSize),
                                     &NCluster, TRUE);
            if (NCluster == 0xffffffff || !FUNC5(Status))
            {
                /* disk is full */
                NCluster = Cluster = FirstCluster;
                Status = STATUS_SUCCESS;
                while (FUNC5(Status) && Cluster != 0xffffffff && Cluster > 1)
                {
                    Status = FUNC6(DeviceExt, FirstCluster, &NCluster, FALSE);
                    FUNC11(DeviceExt, Cluster, 0);
                    Cluster = NCluster;
                }
                return STATUS_DISK_FULL;
            }

            if (IsFatX)
            {
                Fcb->entry.FatX.FirstCluster = FirstCluster;
            }
            else
            {
                if (DeviceExt->FatInfo.FatType == FAT32)
                {
                    Fcb->entry.Fat.FirstCluster = (unsigned short)(FirstCluster & 0x0000FFFF);
                    Fcb->entry.Fat.FirstClusterHigh = FirstCluster >> 16;
                }
                else
                {
                    FUNC0((FirstCluster >> 16) == 0);
                    Fcb->entry.Fat.FirstCluster = (unsigned short)(FirstCluster & 0x0000FFFF);
                }
            }
        }
        else
        {
            if (Fcb->LastCluster > 0)
            {
                if (Fcb->RFCB.AllocationSize.u.LowPart - ClusterSize == Fcb->LastOffset)
                {
                    Cluster = Fcb->LastCluster;
                    Status = STATUS_SUCCESS;
                }
                else
                {
                    Status = FUNC7(DeviceExt, Fcb->LastCluster,
                                             Fcb->RFCB.AllocationSize.u.LowPart - ClusterSize - Fcb->LastOffset,
                                             &Cluster, FALSE);
                }
            }
            else
            {
                Status = FUNC7(DeviceExt, FirstCluster,
                                         Fcb->RFCB.AllocationSize.u.LowPart - ClusterSize,
                                         &Cluster, FALSE);
            }

            if (!FUNC5(Status))
            {
                return Status;
            }

            Fcb->LastCluster = Cluster;
            Fcb->LastOffset = Fcb->RFCB.AllocationSize.u.LowPart - ClusterSize;

            /* FIXME: Check status */
            /* Cluster points now to the last cluster within the chain */
            Status = FUNC7(DeviceExt, Cluster,
                                     FUNC8(NewSize - 1, ClusterSize) - Fcb->LastOffset,
                                     &NCluster, TRUE);
            if (NCluster == 0xffffffff || !FUNC5(Status))
            {
                /* disk is full */
                NCluster = Cluster;
                Status = FUNC6(DeviceExt, FirstCluster, &NCluster, FALSE);
                FUNC11(DeviceExt, Cluster, 0xffffffff);
                Cluster = NCluster;
                while (FUNC5(Status) && Cluster != 0xffffffff && Cluster > 1)
                {
                    Status = FUNC6(DeviceExt, FirstCluster, &NCluster, FALSE);
                    FUNC11(DeviceExt, Cluster, 0);
                    Cluster = NCluster;
                }
                return STATUS_DISK_FULL;
            }
        }
        FUNC9(FileObject, Fcb, NewSize, ClusterSize, FUNC14(DeviceExt));
    }
    else if (NewSize + ClusterSize <= Fcb->RFCB.AllocationSize.u.LowPart)
    {
        FUNC1("Check for the ability to set file size\n");
        if (!FUNC4(FileObject->SectionObjectPointer,
                                  (PLARGE_INTEGER)AllocationSize))
        {
            FUNC1("Couldn't set file size!\n");
            return STATUS_USER_MAPPED_FILE;
        }
        FUNC1("Can set file size\n");

        AllocSizeChanged = TRUE;
        /* FIXME: Use the cached cluster/offset better way. */
        Fcb->LastCluster = Fcb->LastOffset = 0;
        FUNC9(FileObject, Fcb, NewSize, ClusterSize, FUNC14(DeviceExt));
        if (NewSize > 0)
        {
            Status = FUNC7(DeviceExt, FirstCluster,
                                     FUNC8(NewSize - 1, ClusterSize),
                                     &Cluster, FALSE);

            NCluster = Cluster;
            Status = FUNC6(DeviceExt, FirstCluster, &NCluster, FALSE);
            FUNC11(DeviceExt, Cluster, 0xffffffff);
            Cluster = NCluster;
        }
        else
        {
            if (IsFatX)
            {
                Fcb->entry.FatX.FirstCluster = 0;
            }
            else
            {
                if (DeviceExt->FatInfo.FatType == FAT32)
                {
                    Fcb->entry.Fat.FirstCluster = 0;
                    Fcb->entry.Fat.FirstClusterHigh = 0;
                }
                else
                {
                    Fcb->entry.Fat.FirstCluster = 0;
                }
            }

            NCluster = Cluster = FirstCluster;
            Status = STATUS_SUCCESS;
        }

        while (FUNC5(Status) && 0xffffffff != Cluster && Cluster > 1)
        {
            Status = FUNC6(DeviceExt, FirstCluster, &NCluster, FALSE);
            FUNC11(DeviceExt, Cluster, 0);
            Cluster = NCluster;
        }

        if (DeviceExt->FatInfo.FatType == FAT32)
        {
            FUNC3(DeviceExt);
        }
    }
    else
    {
        FUNC9(FileObject, Fcb, NewSize, ClusterSize, FUNC14(DeviceExt));
    }

    /* Update the on-disk directory entry */
    Fcb->Flags |= FCB_IS_DIRTY;
    if (AllocSizeChanged)
    {
        FUNC10(DeviceExt, Fcb);

        FUNC13(DeviceExt, Fcb, FILE_NOTIFY_CHANGE_SIZE, FILE_ACTION_MODIFIED);
    }
    return STATUS_SUCCESS;
}