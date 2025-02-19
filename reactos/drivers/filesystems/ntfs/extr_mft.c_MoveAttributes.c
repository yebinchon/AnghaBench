
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ULONG ;
struct TYPE_8__ {scalar_t__ BytesPerFileRecord; } ;
struct TYPE_10__ {TYPE_1__ NtfsInfo; } ;
struct TYPE_9__ {scalar_t__ Type; scalar_t__ Length; } ;
typedef TYPE_2__* PNTFS_ATTR_RECORD ;
typedef TYPE_3__* PDEVICE_EXTENSION ;
typedef int PCHAR ;


 int ASSERT (int) ;
 scalar_t__ ATTR_RECORD_ALIGNMENT ;
 scalar_t__ AttributeEnd ;
 int RtlMoveMemory (int ,TYPE_2__*,scalar_t__) ;

PNTFS_ATTR_RECORD
MoveAttributes(PDEVICE_EXTENSION DeviceExt,
               PNTFS_ATTR_RECORD FirstAttributeToMove,
               ULONG FirstAttributeOffset,
               ULONG_PTR MoveTo)
{

    ULONG MemBlockSize = 0;
    PNTFS_ATTR_RECORD CurrentAttribute = FirstAttributeToMove;
    ULONG CurrentOffset = FirstAttributeOffset;
    PNTFS_ATTR_RECORD FinalAttribute;

    while (CurrentAttribute->Type != AttributeEnd && CurrentOffset < DeviceExt->NtfsInfo.BytesPerFileRecord)
    {
        CurrentOffset += CurrentAttribute->Length;
        MemBlockSize += CurrentAttribute->Length;
        CurrentAttribute = (PNTFS_ATTR_RECORD)((ULONG_PTR)CurrentAttribute + CurrentAttribute->Length);
    }

    FinalAttribute = (PNTFS_ATTR_RECORD)(MoveTo + MemBlockSize);
    MemBlockSize += sizeof(ULONG) * 2;

    ASSERT(MemBlockSize % ATTR_RECORD_ALIGNMENT == 0);


    RtlMoveMemory((PCHAR)MoveTo, FirstAttributeToMove, MemBlockSize);

    return FinalAttribute;
}
