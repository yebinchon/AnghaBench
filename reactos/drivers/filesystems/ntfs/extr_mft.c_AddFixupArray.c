
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int USHORT ;
typedef size_t ULONG ;
typedef int UCHAR ;
struct TYPE_8__ {size_t BytesPerSector; } ;
struct TYPE_11__ {TYPE_1__ NtfsInfo; } ;
struct TYPE_10__ {int USN; int * Array; } ;
struct TYPE_9__ {size_t UsaCount; int UsaOffset; } ;
typedef TYPE_2__* PNTFS_RECORD_HEADER ;
typedef TYPE_3__* PFIXUP_ARRAY ;
typedef TYPE_4__* PDEVICE_EXTENSION ;
typedef int PCHAR ;
typedef int NTSTATUS ;


 int DPRINT (char*,TYPE_4__*,...) ;
 int STATUS_SUCCESS ;

NTSTATUS
AddFixupArray(PDEVICE_EXTENSION Vcb,
              PNTFS_RECORD_HEADER Record)
{
    USHORT *pShortToFixUp;
    ULONG ArrayEntryCount = Record->UsaCount - 1;
    ULONG Offset = Vcb->NtfsInfo.BytesPerSector - 2;
    ULONG i;

    PFIXUP_ARRAY fixupArray = (PFIXUP_ARRAY)((UCHAR*)Record + Record->UsaOffset);

    DPRINT("AddFixupArray(%p, %p)\n fixupArray->USN: %u, ArrayEntryCount: %u\n", Vcb, Record, fixupArray->USN, ArrayEntryCount);

    fixupArray->USN++;

    for (i = 0; i < ArrayEntryCount; i++)
    {
        DPRINT("USN: %u\tOffset: %u\n", fixupArray->USN, Offset);

        pShortToFixUp = (USHORT*)((PCHAR)Record + Offset);
        fixupArray->Array[i] = *pShortToFixUp;
        *pShortToFixUp = fixupArray->USN;
        Offset += Vcb->NtfsInfo.BytesPerSector;
    }

    return STATUS_SUCCESS;
}
