
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_9__ {scalar_t__ BytesPerCluster; int BytesPerSector; int BytesPerFileRecord; } ;
struct TYPE_12__ {TYPE_2__ NtfsInfo; int StorageDevice; } ;
struct TYPE_11__ {scalar_t__* CacheRun; scalar_t__ CacheRunLastLCN; int CacheRunStartLCN; scalar_t__ CacheRunLength; scalar_t__ CacheRunCurrentOffset; scalar_t__ CacheRunOffset; TYPE_3__* pRecord; int DataRunsMCB; } ;
struct TYPE_8__ {scalar_t__ ValueLength; scalar_t__ ValueOffset; } ;
struct TYPE_10__ {scalar_t__ IsNonResident; TYPE_1__ Resident; } ;
typedef int PVOID ;
typedef scalar_t__* PUCHAR ;
typedef TYPE_4__* PNTFS_ATTR_CONTEXT ;
typedef TYPE_5__* PDEVICE_EXTENSION ;
typedef scalar_t__ PCHAR ;
typedef int NTSTATUS ;
typedef int LONGLONG ;


 int ConvertLargeMCBToDataRuns (int *,scalar_t__*,int ,scalar_t__*) ;
 scalar_t__* DecodeRun (scalar_t__*,int*,scalar_t__*) ;
 scalar_t__* ExAllocatePoolWithTag (int ,int ,int ) ;
 int ExFreePoolWithTag (scalar_t__*,int ) ;
 int FALSE ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NonPagedPool ;
 int NtfsReadDisk (int ,int,scalar_t__,int ,int ,int ) ;
 int RtlCopyMemory (scalar_t__,int ,scalar_t__) ;
 int RtlZeroMemory (scalar_t__,scalar_t__) ;
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int TAG_NTFS ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

ULONG
ReadAttribute(PDEVICE_EXTENSION Vcb,
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


    PUCHAR TempBuffer;

    if (!Context->pRecord->IsNonResident)
    {


        ULONG LittleOffset = (ULONG)Offset;


        if (Offset > Context->pRecord->Resident.ValueLength)
            return 0;
        if (Offset + Length > Context->pRecord->Resident.ValueLength)
            Length = (ULONG)(Context->pRecord->Resident.ValueLength - Offset);

        RtlCopyMemory(Buffer, (PVOID)((ULONG_PTR)Context->pRecord + Context->pRecord->Resident.ValueOffset + LittleOffset), Length);
        return Length;
    }
    AlreadyRead = 0;



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

        ULONG UsedBufferSize;
        TempBuffer = ExAllocatePoolWithTag(NonPagedPool, Vcb->NtfsInfo.BytesPerFileRecord, TAG_NTFS);
        if (TempBuffer == ((void*)0))
        {
            return STATUS_INSUFFICIENT_RESOURCES;
        }

        LastLCN = 0;
        CurrentOffset = 0;


        ConvertLargeMCBToDataRuns(&Context->DataRunsMCB,
                                  TempBuffer,
                                  Vcb->NtfsInfo.BytesPerFileRecord,
                                  &UsedBufferSize);

        DataRun = TempBuffer;

        while (1)
        {
            DataRun = DecodeRun(DataRun, &DataRunOffset, &DataRunLength);
            if (DataRunOffset != -1)
            {

                DataRunStartLCN = LastLCN + DataRunOffset;
                LastLCN = DataRunStartLCN;
            }
            else
            {

                DataRunStartLCN = -1;
            }

            if (Offset >= CurrentOffset &&
                Offset < CurrentOffset + (DataRunLength * Vcb->NtfsInfo.BytesPerCluster))
            {
                break;
            }

            if (*DataRun == 0)
            {
                ExFreePoolWithTag(TempBuffer, TAG_NTFS);
                return AlreadyRead;
            }

            CurrentOffset += DataRunLength * Vcb->NtfsInfo.BytesPerCluster;
        }
    }





    ReadLength = (ULONG)min(DataRunLength * Vcb->NtfsInfo.BytesPerCluster - (Offset - CurrentOffset), Length);
    if (DataRunStartLCN == -1)
    {
        RtlZeroMemory(Buffer, ReadLength);
        Status = STATUS_SUCCESS;
    }
    else
    {
        Status = NtfsReadDisk(Vcb->StorageDevice,
                              DataRunStartLCN * Vcb->NtfsInfo.BytesPerCluster + Offset - CurrentOffset,
                              ReadLength,
                              Vcb->NtfsInfo.BytesPerSector,
                              (PVOID)Buffer,
                              FALSE);
    }
    if (NT_SUCCESS(Status))
    {
        Length -= ReadLength;
        Buffer += ReadLength;
        AlreadyRead += ReadLength;

        if (ReadLength == DataRunLength * Vcb->NtfsInfo.BytesPerCluster - (Offset - CurrentOffset))
        {
            CurrentOffset += DataRunLength * Vcb->NtfsInfo.BytesPerCluster;
            DataRun = DecodeRun(DataRun, &DataRunOffset, &DataRunLength);
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
            ReadLength = (ULONG)min(DataRunLength * Vcb->NtfsInfo.BytesPerCluster, Length);
            if (DataRunStartLCN == -1)
                RtlZeroMemory(Buffer, ReadLength);
            else
            {
                Status = NtfsReadDisk(Vcb->StorageDevice,
                                      DataRunStartLCN * Vcb->NtfsInfo.BytesPerCluster,
                                      ReadLength,
                                      Vcb->NtfsInfo.BytesPerSector,
                                      (PVOID)Buffer,
                                      FALSE);
                if (!NT_SUCCESS(Status))
                    break;
            }

            Length -= ReadLength;
            Buffer += ReadLength;
            AlreadyRead += ReadLength;


            if (Length == 0 && ReadLength != DataRunLength * Vcb->NtfsInfo.BytesPerCluster)
                break;





            if (*DataRun == 0)
                break;
            CurrentOffset += DataRunLength * Vcb->NtfsInfo.BytesPerCluster;
            DataRun = DecodeRun(DataRun, &DataRunOffset, &DataRunLength);
            if (DataRunOffset != -1)
            {

                DataRunStartLCN = LastLCN + DataRunOffset;
                LastLCN = DataRunStartLCN;
            }
            else
            {

                DataRunStartLCN = -1;
            }
        }

    }


    if (Context->pRecord->IsNonResident)
        ExFreePoolWithTag(TempBuffer, TAG_NTFS);

    Context->CacheRun = DataRun;
    Context->CacheRunOffset = Offset + AlreadyRead;
    Context->CacheRunStartLCN = DataRunStartLCN;
    Context->CacheRunLength = DataRunLength;
    Context->CacheRunLastLCN = LastLCN;
    Context->CacheRunCurrentOffset = CurrentOffset;

    return AlreadyRead;
}
