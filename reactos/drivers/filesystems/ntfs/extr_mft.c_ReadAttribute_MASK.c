#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG_PTR ;
typedef  scalar_t__ ULONGLONG ;
typedef  scalar_t__ ULONG ;
struct TYPE_9__ {scalar_t__ BytesPerCluster; int /*<<< orphan*/  BytesPerSector; int /*<<< orphan*/  BytesPerFileRecord; } ;
struct TYPE_12__ {TYPE_2__ NtfsInfo; int /*<<< orphan*/  StorageDevice; } ;
struct TYPE_11__ {scalar_t__* CacheRun; scalar_t__ CacheRunLastLCN; int CacheRunStartLCN; scalar_t__ CacheRunLength; scalar_t__ CacheRunCurrentOffset; scalar_t__ CacheRunOffset; TYPE_3__* pRecord; int /*<<< orphan*/  DataRunsMCB; } ;
struct TYPE_8__ {scalar_t__ ValueLength; scalar_t__ ValueOffset; } ;
struct TYPE_10__ {scalar_t__ IsNonResident; TYPE_1__ Resident; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  scalar_t__* PUCHAR ;
typedef  TYPE_4__* PNTFS_ATTR_CONTEXT ;
typedef  TYPE_5__* PDEVICE_EXTENSION ;
typedef  scalar_t__ PCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int LONGLONG ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__* FUNC1 (scalar_t__*,int*,scalar_t__*) ; 
 scalar_t__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TAG_NTFS ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 

ULONG
FUNC9(PDEVICE_EXTENSION Vcb,
              PNTFS_ATTR_CONTEXT Context,
              ULONGLONG Offset,
              PCHAR Buffer,
              ULONG Length)
{
    ULONGLONG LastLCN;
    PUCHAR DataRun;
    LONGLONG DataRunOffset;
    ULONGLONG DataRunLength;
    LONGLONG DataRunStartLCN;
    ULONGLONG CurrentOffset;
    ULONG ReadLength;
    ULONG AlreadyRead;
    NTSTATUS Status;
    
    //TEMPTEMP
    PUCHAR TempBuffer;

    if (!Context->pRecord->IsNonResident)
    {
        // We need to truncate Offset to a ULONG for pointer arithmetic
        // The check below should ensure that Offset is well within the range of 32 bits
        ULONG LittleOffset = (ULONG)Offset;

        // Ensure that offset isn't beyond the end of the attribute
        if (Offset > Context->pRecord->Resident.ValueLength)
            return 0;
        if (Offset + Length > Context->pRecord->Resident.ValueLength)
            Length = (ULONG)(Context->pRecord->Resident.ValueLength - Offset);

        FUNC6(Buffer, (PVOID)((ULONG_PTR)Context->pRecord + Context->pRecord->Resident.ValueOffset + LittleOffset), Length);
        return Length;
    }

    /*
     * Non-resident attribute
     */

    /*
     * I. Find the corresponding start data run.
     */

    AlreadyRead = 0;

    // FIXME: Cache seems to be non-working. Disable it for now
    //if(Context->CacheRunOffset <= Offset && Offset < Context->CacheRunOffset + Context->CacheRunLength * Volume->ClusterSize)
    if (0)
    {
        DataRun = Context->CacheRun;
        LastLCN = Context->CacheRunLastLCN;
        DataRunStartLCN = Context->CacheRunStartLCN;
        DataRunLength = Context->CacheRunLength;
        CurrentOffset = Context->CacheRunCurrentOffset;
    }
    else
    {
        //TEMPTEMP
        ULONG UsedBufferSize;
        TempBuffer = FUNC2(NonPagedPool, Vcb->NtfsInfo.BytesPerFileRecord, TAG_NTFS);
        if (TempBuffer == NULL)
        {
            return STATUS_INSUFFICIENT_RESOURCES;
        }

        LastLCN = 0;
        CurrentOffset = 0;

        // This will be rewritten in the next iteration to just use the DataRuns MCB directly
        FUNC0(&Context->DataRunsMCB,
                                  TempBuffer,
                                  Vcb->NtfsInfo.BytesPerFileRecord,
                                  &UsedBufferSize);

        DataRun = TempBuffer;

        while (1)
        {
            DataRun = FUNC1(DataRun, &DataRunOffset, &DataRunLength);
            if (DataRunOffset != -1)
            {
                /* Normal data run. */
                DataRunStartLCN = LastLCN + DataRunOffset;
                LastLCN = DataRunStartLCN;
            }
            else
            {
                /* Sparse data run. */
                DataRunStartLCN = -1;
            }

            if (Offset >= CurrentOffset &&
                Offset < CurrentOffset + (DataRunLength * Vcb->NtfsInfo.BytesPerCluster))
            {
                break;
            }

            if (*DataRun == 0)
            {
                FUNC3(TempBuffer, TAG_NTFS);
                return AlreadyRead;
            }

            CurrentOffset += DataRunLength * Vcb->NtfsInfo.BytesPerCluster;
        }
    }

    /*
     * II. Go through the run list and read the data
     */

    ReadLength = (ULONG)FUNC8(DataRunLength * Vcb->NtfsInfo.BytesPerCluster - (Offset - CurrentOffset), Length);
    if (DataRunStartLCN == -1)
    {
        FUNC7(Buffer, ReadLength);
        Status = STATUS_SUCCESS;
    }
    else
    {
        Status = FUNC5(Vcb->StorageDevice,
                              DataRunStartLCN * Vcb->NtfsInfo.BytesPerCluster + Offset - CurrentOffset,
                              ReadLength,
                              Vcb->NtfsInfo.BytesPerSector,
                              (PVOID)Buffer,
                              FALSE);
    }
    if (FUNC4(Status))
    {
        Length -= ReadLength;
        Buffer += ReadLength;
        AlreadyRead += ReadLength;

        if (ReadLength == DataRunLength * Vcb->NtfsInfo.BytesPerCluster - (Offset - CurrentOffset))
        {
            CurrentOffset += DataRunLength * Vcb->NtfsInfo.BytesPerCluster;
            DataRun = FUNC1(DataRun, &DataRunOffset, &DataRunLength);
            if (DataRunOffset != (ULONGLONG)-1)
            {
                DataRunStartLCN = LastLCN + DataRunOffset;
                LastLCN = DataRunStartLCN;
            }
            else
                DataRunStartLCN = -1;
        }

        while (Length > 0)
        {
            ReadLength = (ULONG)FUNC8(DataRunLength * Vcb->NtfsInfo.BytesPerCluster, Length);
            if (DataRunStartLCN == -1)
                FUNC7(Buffer, ReadLength);
            else
            {
                Status = FUNC5(Vcb->StorageDevice,
                                      DataRunStartLCN * Vcb->NtfsInfo.BytesPerCluster,
                                      ReadLength,
                                      Vcb->NtfsInfo.BytesPerSector,
                                      (PVOID)Buffer,
                                      FALSE);
                if (!FUNC4(Status))
                    break;
            }

            Length -= ReadLength;
            Buffer += ReadLength;
            AlreadyRead += ReadLength;

            /* We finished this request, but there still data in this data run. */
            if (Length == 0 && ReadLength != DataRunLength * Vcb->NtfsInfo.BytesPerCluster)
                break;

            /*
             * Go to next run in the list.
             */

            if (*DataRun == 0)
                break;
            CurrentOffset += DataRunLength * Vcb->NtfsInfo.BytesPerCluster;
            DataRun = FUNC1(DataRun, &DataRunOffset, &DataRunLength);
            if (DataRunOffset != -1)
            {
                /* Normal data run. */
                DataRunStartLCN = LastLCN + DataRunOffset;
                LastLCN = DataRunStartLCN;
            }
            else
            {
                /* Sparse data run. */
                DataRunStartLCN = -1;
            }
        } /* while */

    } /* if Disk */

    // TEMPTEMP
    if (Context->pRecord->IsNonResident)
        FUNC3(TempBuffer, TAG_NTFS);

    Context->CacheRun = DataRun;
    Context->CacheRunOffset = Offset + AlreadyRead;
    Context->CacheRunStartLCN = DataRunStartLCN;
    Context->CacheRunLength = DataRunLength;
    Context->CacheRunLastLCN = LastLCN;
    Context->CacheRunCurrentOffset = CurrentOffset;

    return AlreadyRead;
}