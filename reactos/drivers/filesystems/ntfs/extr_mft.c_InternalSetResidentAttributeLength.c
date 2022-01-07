
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ULONG ;
struct TYPE_14__ {scalar_t__ ValueOffset; scalar_t__ ValueLength; } ;
struct TYPE_17__ {scalar_t__ Length; TYPE_2__ Resident; int IsNonResident; } ;
struct TYPE_16__ {TYPE_6__* pRecord; } ;
struct TYPE_13__ {scalar_t__ ValueLength; } ;
struct TYPE_15__ {scalar_t__ Length; scalar_t__ Type; TYPE_1__ Resident; } ;
typedef int PVOID ;
typedef TYPE_3__* PNTFS_ATTR_RECORD ;
typedef TYPE_4__* PNTFS_ATTR_CONTEXT ;
typedef scalar_t__ PFILE_RECORD_HEADER ;
typedef int PDEVICE_EXTENSION ;
typedef int NTSTATUS ;


 scalar_t__ ALIGN_UP_BY (scalar_t__,scalar_t__) ;
 int ASSERT (int) ;
 scalar_t__ ATTR_RECORD_ALIGNMENT ;
 scalar_t__ AttributeEnd ;
 int DPRINT1 (char*,...) ;
 TYPE_6__* ExAllocatePoolWithTag (int ,scalar_t__,int ) ;
 int ExFreePoolWithTag (TYPE_6__*,int ) ;
 int FILE_RECORD_END ;
 TYPE_3__* MoveAttributes (int ,TYPE_3__*,scalar_t__,scalar_t__) ;
 int NonPagedPool ;
 int RtlCopyMemory (TYPE_6__*,TYPE_3__*,scalar_t__) ;
 int RtlZeroMemory (int ,scalar_t__) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int SetFileRecordEnd (scalar_t__,TYPE_3__*,int ) ;
 int TAG_NTFS ;

NTSTATUS
InternalSetResidentAttributeLength(PDEVICE_EXTENSION DeviceExt,
                                   PNTFS_ATTR_CONTEXT AttrContext,
                                   PFILE_RECORD_HEADER FileRecord,
                                   ULONG AttrOffset,
                                   ULONG DataSize)
{
    PNTFS_ATTR_RECORD Destination = (PNTFS_ATTR_RECORD)((ULONG_PTR)FileRecord + AttrOffset);
    PNTFS_ATTR_RECORD NextAttribute = (PNTFS_ATTR_RECORD)((ULONG_PTR)Destination + Destination->Length);
    PNTFS_ATTR_RECORD FinalAttribute;
    ULONG OldAttributeLength = Destination->Length;
    ULONG NextAttributeOffset;

    DPRINT1("InternalSetResidentAttributeLength( %p, %p, %p, %lu, %lu )\n", DeviceExt, AttrContext, FileRecord, AttrOffset, DataSize);

    ASSERT(!AttrContext->pRecord->IsNonResident);


    Destination->Resident.ValueLength = DataSize;


    Destination->Length = ALIGN_UP_BY(DataSize + AttrContext->pRecord->Resident.ValueOffset, ATTR_RECORD_ALIGNMENT);
    NextAttributeOffset = AttrOffset + Destination->Length;


    ASSERT(NextAttributeOffset % ATTR_RECORD_ALIGNMENT == 0);


    if (Destination->Length > OldAttributeLength)
    {

        ExFreePoolWithTag(AttrContext->pRecord, TAG_NTFS);


        AttrContext->pRecord = ExAllocatePoolWithTag(NonPagedPool, Destination->Length, TAG_NTFS);
        if (!AttrContext->pRecord)
        {
            DPRINT1("Unable to allocate memory for attribute!\n");
            return STATUS_INSUFFICIENT_RESOURCES;
        }
        RtlZeroMemory((PVOID)((ULONG_PTR)AttrContext->pRecord + OldAttributeLength), Destination->Length - OldAttributeLength);
        RtlCopyMemory(AttrContext->pRecord, Destination, OldAttributeLength);
    }


    if (NextAttribute->Type != AttributeEnd)
    {

        FinalAttribute = MoveAttributes(DeviceExt, NextAttribute, NextAttributeOffset, (ULONG_PTR)Destination + Destination->Length);
    }
    else
    {

        FinalAttribute = (PNTFS_ATTR_RECORD)((ULONG_PTR)NextAttribute - OldAttributeLength + Destination->Length);
    }


    AttrContext->pRecord->Length = Destination->Length;
    AttrContext->pRecord->Resident.ValueLength = DataSize;


    SetFileRecordEnd(FileRecord, FinalAttribute, FILE_RECORD_END);



    return STATUS_SUCCESS;
}
