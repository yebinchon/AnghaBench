#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  size_t ULONG ;
struct TYPE_19__ {size_t Hash; struct TYPE_19__* next; TYPE_2__* self; } ;
struct TYPE_18__ {size_t HashTableSize; TYPE_5__** FcbHashTable; } ;
struct TYPE_17__ {int Length; int* Buffer; } ;
struct TYPE_15__ {size_t Hash; } ;
struct TYPE_16__ {TYPE_3__ ShortNameU; TYPE_3__ LongNameU; TYPE_1__ Hash; TYPE_3__ DirNameU; } ;
typedef  TYPE_2__* PVFATFCB ;
typedef  TYPE_3__* PUNICODE_STRING ;
typedef  TYPE_4__* PDEVICE_EXTENSION ;
typedef  TYPE_5__ HASHENTRY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_3__*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_2__*) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

PVFATFCB
FUNC6(
    PDEVICE_EXTENSION pVCB,
    PUNICODE_STRING PathNameU)
{
    PVFATFCB  rcFCB;
    ULONG Hash;
    UNICODE_STRING DirNameU;
    UNICODE_STRING FileNameU;
    PUNICODE_STRING FcbNameU;

    HASHENTRY* entry;

    FUNC1("'%wZ'\n", PathNameU);

    FUNC0(PathNameU->Length >= sizeof(WCHAR) && PathNameU->Buffer[0] == L'\\');
    Hash = FUNC4(0, PathNameU);

    entry = pVCB->FcbHashTable[Hash % pVCB->HashTableSize];
    if (entry)
    {
        FUNC5(PathNameU, &DirNameU, &FileNameU);
    }

    while (entry)
    {
        if (entry->Hash == Hash)
        {
            rcFCB = entry->self;
            FUNC1("'%wZ' '%wZ'\n", &DirNameU, &rcFCB->DirNameU);
            if (FUNC2(&DirNameU, &rcFCB->DirNameU, TRUE))
            {
                if (rcFCB->Hash.Hash == Hash)
                {
                    FcbNameU = &rcFCB->LongNameU;
                }
                else
                {
                    FcbNameU = &rcFCB->ShortNameU;
                }
                /* compare the file name */
                FUNC1("'%wZ' '%wZ'\n", &FileNameU, FcbNameU);
                if (FUNC2(&FileNameU, FcbNameU, TRUE))
                {
                    FUNC3(pVCB, rcFCB);
                    return rcFCB;
                }
            }
        }
        entry = entry->next;
    }
    return NULL;
}