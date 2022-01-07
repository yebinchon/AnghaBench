
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UNICODE_STRING ;
typedef size_t ULONG ;
struct TYPE_19__ {size_t Hash; struct TYPE_19__* next; TYPE_2__* self; } ;
struct TYPE_18__ {size_t HashTableSize; TYPE_5__** FcbHashTable; } ;
struct TYPE_17__ {int Length; int* Buffer; } ;
struct TYPE_15__ {size_t Hash; } ;
struct TYPE_16__ {TYPE_3__ ShortNameU; TYPE_3__ LongNameU; TYPE_1__ Hash; TYPE_3__ DirNameU; } ;
typedef TYPE_2__* PVFATFCB ;
typedef TYPE_3__* PUNICODE_STRING ;
typedef TYPE_4__* PDEVICE_EXTENSION ;
typedef TYPE_5__ HASHENTRY ;


 int ASSERT (int) ;
 int DPRINT (char*,TYPE_3__*,...) ;
 scalar_t__ RtlEqualUnicodeString (int *,TYPE_3__*,int ) ;
 int TRUE ;
 int vfatGrabFCB (TYPE_4__*,TYPE_2__*) ;
 size_t vfatNameHash (int ,TYPE_3__*) ;
 int vfatSplitPathName (TYPE_3__*,int *,int *) ;

PVFATFCB
vfatGrabFCBFromTable(
    PDEVICE_EXTENSION pVCB,
    PUNICODE_STRING PathNameU)
{
    PVFATFCB rcFCB;
    ULONG Hash;
    UNICODE_STRING DirNameU;
    UNICODE_STRING FileNameU;
    PUNICODE_STRING FcbNameU;

    HASHENTRY* entry;

    DPRINT("'%wZ'\n", PathNameU);

    ASSERT(PathNameU->Length >= sizeof(WCHAR) && PathNameU->Buffer[0] == L'\\');
    Hash = vfatNameHash(0, PathNameU);

    entry = pVCB->FcbHashTable[Hash % pVCB->HashTableSize];
    if (entry)
    {
        vfatSplitPathName(PathNameU, &DirNameU, &FileNameU);
    }

    while (entry)
    {
        if (entry->Hash == Hash)
        {
            rcFCB = entry->self;
            DPRINT("'%wZ' '%wZ'\n", &DirNameU, &rcFCB->DirNameU);
            if (RtlEqualUnicodeString(&DirNameU, &rcFCB->DirNameU, TRUE))
            {
                if (rcFCB->Hash.Hash == Hash)
                {
                    FcbNameU = &rcFCB->LongNameU;
                }
                else
                {
                    FcbNameU = &rcFCB->ShortNameU;
                }

                DPRINT("'%wZ' '%wZ'\n", &FileNameU, FcbNameU);
                if (RtlEqualUnicodeString(&FileNameU, FcbNameU, TRUE))
                {
                    vfatGrabFCB(pVCB, rcFCB);
                    return rcFCB;
                }
            }
        }
        entry = entry->next;
    }
    return ((void*)0);
}
